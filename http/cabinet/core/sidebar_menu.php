<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */


Class sidebar_menu
{
    var $mysqli;
    //var $MenuData = Array();
    var $Lang = '';
    var $DefaultLang = '';
    // -- Темплеты --
    var $templete_sidebar_menu = '';
    var $templete_sidebar_link = '';
    var $templete_sidebar_popup_option = '';
    var $templete_sidebar_section = '';

    var $CONTENT = '';

    //конструктор
    function sidebar_menu($mysqli, $Lang, $ActiveItem)
    {

        $this->mysqli = $mysqli;
        $this -> Lang = $Lang;
        $this -> DefaultLang = $_SESSION['default_language'];

        // Прочитать шаблоны
        $this -> Get_templete_sidebar_menu();
        $this -> Get_templete_sidebar_link();
        $this -> Get_templete_sidebar_popup_option();
        $this -> Get_templete_top_sidebar_section();

        // Получить спискок
        $MySQLiQuery = $mysqli->prepare("
                SELECT ss.SectionID, ss.RowOrder AS 'SectionRowOrder', ssd.LangID, ssd.Name AS 'SectionName', 
                       sso.OptionID, sso.RowOrder AS 'OptionRowOrder', ssod.Name AS 'OptionName', 
                       ssol.LinkID, ssol.RowOrder AS 'LinkRowOrder', ssold.Name AS 'LinkName', ssol.Href
                    FROM SidebarSection ss
                      LEFT JOIN SidebarSectionData ssd ON ss.SectionID = ssd.SectionID AND ssd.LangID = ?
                      INNER JOIN SidebarSectionOption sso ON sso.SectionID = ss.SectionID
                      LEFT JOIN SidebarSectionOptionData ssod ON ssod.OptionID = sso.OptionID AND ssod.LangID = ssd.LangID
                      INNER JOIN SidebarSectionOptionLink ssol ON ssol.OptionID = sso.OptionID 
                      LEFT JOIN SidebarSectionOptionLinkData ssold ON ssold.LinkID = ssol.LinkID AND ssold.LangID = ssd.LangID
                      INNER JOIN SidebarLinkAccess sla ON sla.LinkID = ssol.LinkID
                      INNER JOIN GroupRoles gr ON gr.RoleID = sla.RoleID
                      INNER JOIN UserGroups ug ON ug.GroupID = gr.GroupID
                    WHERE ug.UserID = ?
                    GROUP BY ss.SectionID, ss.RowOrder, ssd.LangID, ssd.Name, sso.OptionID, sso.RowOrder, ssod.Name, ssol.LinkID, ssol.RowOrder, ssold.Name, ssol.Href
                    ORDER BY ss.RowOrder, sso.RowOrder, ssol.RowOrder;
        ");
        $MySQLiQuery->bind_param('ii', $this->Lang, $_SESSION['authentication']['UserID']);
        $MySQLiQuery->execute();
        $result = GetResultArray($MySQLiQuery);

        $MenuData = Array();
        if (Count($result) > 0){
            foreach ($result as $row){
                $MenuData[$row['SectionRowOrder']]['SectionID'] = $row['SectionID'];
                $MenuData[$row['SectionRowOrder']]['SectionName'] = $row['SectionName'];
                $MenuData[$row['SectionRowOrder']]['LangID'] = $row['LangID'];
                $MenuData[$row['SectionRowOrder']]['Options'][$row['OptionRowOrder']]['OptionID'] = $row['OptionID'];
                $MenuData[$row['SectionRowOrder']]['Options'][$row['OptionRowOrder']]['OptionName'] = $row['OptionName'];
                $MenuData[$row['SectionRowOrder']]['Options'][$row['OptionRowOrder']]['Links'][$row['LinkRowOrder']]['LinkID'] = $row['LinkID'];
                $MenuData[$row['SectionRowOrder']]['Options'][$row['OptionRowOrder']]['Links'][$row['LinkRowOrder']]['LinkName'] = $row['LinkName'];
                $MenuData[$row['SectionRowOrder']]['Options'][$row['OptionRowOrder']]['Links'][$row['LinkRowOrder']]['Href'] = $row['Href'];
            }

            $sidebar_content = $this -> templete_sidebar_menu;
            $sections_content = '';
            foreach ($MenuData as $Section){
                $temp_section = $this -> templete_sidebar_section;
                $temp_section = str_replace('{name}', $Section['SectionName'], $temp_section);
                $temp_options_content = '';
                foreach ($Section['Options'] as $Option){
                    if (count($Option['Links']) == 1){
                        $temp_option = $this -> templete_sidebar_link;
                        $temp_option = str_replace('{name}', $Option['OptionName'], $temp_option);
                        $temp_option = str_replace('{href}', $Option['Links'][1]['Href'], $temp_option);
                    }else{
                        $temp_option = $this -> templete_sidebar_popup_option;
                        $temp_option = str_replace('{name}', $Option['OptionName'], $temp_option);
                        $temp_option = str_replace('{popupid}', 'popup_'.$Option['OptionID'], $temp_option);
                        $temp_popuplinks_content = '';
                        foreach ($Option['Links'] as $Link){
                            $temp_link = $this -> templete_sidebar_link;
                            $temp_link = str_replace('{name}', $Link['LinkName'], $temp_link);
                            $temp_link = str_replace('{href}', $Link['Href'], $temp_link);
                            $temp_popuplinks_content .= $temp_link;
                        }
                        $temp_option = str_replace('{links}', $temp_popuplinks_content, $temp_option);
                    }
                    $temp_options_content .= $temp_option;
                }
                $temp_section = str_replace('{options}', $temp_options_content, $temp_section);
                $sections_content .= $temp_section;
            }
            $sidebar_content = str_replace('{sections}', $sections_content, $sidebar_content);
        }

        // подставить опции в меню
        $this -> CONTENT = $sidebar_content;
    }

    // методы чтения шаблонов
    private function Get_templete_sidebar_menu(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/sidebar_menu.html';
        if (file_exists($_file_path))
        {
            $this -> templete_sidebar_menu = file_get_contents($_file_path);
        }
    }
    private function Get_templete_sidebar_link(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/sidebar_link.html';
        if (file_exists($_file_path))
        {
            $this -> templete_sidebar_link = file_get_contents($_file_path);
        }
    }
    private function Get_templete_sidebar_popup_option(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/sidebar_popup_option.html';
        if (file_exists($_file_path))
        {
            $this -> templete_sidebar_popup_option = file_get_contents($_file_path);
        }
    }
    private function Get_templete_top_sidebar_section(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/sidebar_section.html';
        if (file_exists($_file_path))
        {
            $this -> templete_sidebar_section = file_get_contents($_file_path);
        }
    }
}
?>