<?php
/**
 * Created by PhpStorm.
 * User: Taggart
 * Date: 15.05.2018
 * Time: 20:24
 */


Class linkblock
{
    var $mysqli;
    var $LinkBlockID;
    var $AlbumData = Array();
    var $Lang = 'ru';
    var $DefaultLang = 'ru';

    // -- Темплеты --
    var $templete_link_block = '';
    var $templete_link_block_block = '';
    var $templete_link_block_link = '';

    var $CONTENT = '';

    //конструктор
    function linkblock($mysqli, $LinkBlockID, $Lang)
    {
        $this -> mysqli = $mysqli;
        $this -> LinkBlockID = $LinkBlockID;
        $this -> Lang = $Lang;
        $this -> DefaultLang = $_SESSION['default_language'];

        // Прочитать шаблоны
        $this -> GetCardPageLinkBlockTemplete();
        $this -> GetCardPageLinkBlockBlockTemplete();
        $this -> GetCardPageLinkBlockLinkTemplete();

        //Преобразователь ссылки для языка
        $LinkLangCorrector = '';
        if ($this -> DefaultLang != $this -> Lang){
            $Querry = $this->mysqli->prepare("
                    SELECT ll.Lang
                        FROM LangList ll
                        WHERE ll.LangID = ?
                ");
            $Querry->bind_param('i', $this -> Lang);
            $Querry->execute();
            $result = GetResultArray($Querry);
            $LinkLangCorrector = $result[0]['Lang'].'/';
        }

        // получить заголовок
        $Querry = $this->mysqli->prepare("
                SELECT lb.LinkBlockID, lbd.LinkBlockTitle
                    FROM LinkBlock lb
                      LEFT JOIN LinkBlockData lbd ON lb.LinkBlockID = lbd.LinkBlockID AND lbd.LangID = ?
                    WHERE lb.LinkBlockID = ?;
            ");
        $Querry->bind_param('ii', $this -> Lang, $this->LinkBlockID);
        $Querry->execute();
        $result = GetResultArray($Querry);
        $LinkBlockData = $result[0];



        $CardPageLinkBlock = $this -> templete_link_block;
        $CardPageLinkBlock = str_replace('{LinkBlockTitle}', $LinkBlockData['LinkBlockTitle'], $CardPageLinkBlock);

        $BlockDataQuerry = $this->mysqli->prepare("
                SELECT lb.LinkBlockID, lbg.LinkBlockGroupID
                    FROM LinkBlock lb
                      LEFT JOIN LinkBlockGroup lbg ON lb.LinkBlockID = lbg.LinkBlockID
                    WHERE lb.LinkBlockID = ?
                    ORDER BY lbg.RowOrder;
            ");
        $BlockDataQuerry->bind_param('i', $this->LinkBlockID);
        $BlockDataQuerry->execute();
        $LinkBlockData['LinkBlocks'] = GetResultArray($BlockDataQuerry);

        $BlockLinksDataQuerry = $this->mysqli->prepare("
                SELECT lbg.LinkBlockGroupID, lbgl.LinkId, lbld.LangID, lbld.LinkTitle, lbld.LinkSrc
                    FROM LinkBlockGroup lbg
                      LEFT JOIN LinkBlockGroupLinks lbgl ON lbg.LinkBlockGroupID = lbgl.LinkBlockGroupID
                      LEFT JOIN LinkBlockLinksData lbld ON lbgl.LinkId = lbld.LinkId AND lbld.LangID = ?
                    WHERE lbg.LinkBlockGroupID = ?;
            ");

        $LinkBlocks = '';
        foreach ($LinkBlockData['LinkBlocks'] as $BlockData){

            $BlockLinksDataQuerry->bind_param('ii', $this -> Lang, $BlockData['LinkBlockGroupID']);
            $BlockLinksDataQuerry->execute();
            $BlockData = GetResultArray($BlockLinksDataQuerry);

            $TempLinkBlock = $this -> templete_link_block_block;

            $Links = '';
            foreach ($BlockData as $LinkData){
                $TempLink = $this -> templete_link_block_link;
                $TempLink = str_replace('{LinkHref}', $LinkLangCorrector.$LinkData['LinkSrc'], $TempLink);
                $TempLink = str_replace('{LinkTitle}', $LinkData['LinkTitle'], $TempLink);
                $Links .= $TempLink;
            }
            $TempLinkBlock = str_replace('{LinkBlockLinks}', $Links, $TempLinkBlock);

            $LinkBlocks .= $TempLinkBlock;
        }
        $CardPageLinkBlock = str_replace('{LinkBlockBlocks}', $LinkBlocks, $CardPageLinkBlock);

        $this -> CONTENT = $CardPageLinkBlock;

    }

    private function GetCardPageLinkBlockTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/card_page_link_block.html';
        if (file_exists($_file_path))
        {
            $this -> templete_link_block = file_get_contents($_file_path);
        }
    }
    private function GetCardPageLinkBlockBlockTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/card_page_link_block_block.html';
        if (file_exists($_file_path))
        {
            $this -> templete_link_block_block = file_get_contents($_file_path);

        }
    }
    private function GetCardPageLinkBlockLinkTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pages/card_page_link_block_link.html';
        if (file_exists($_file_path))
        {
            $this -> templete_link_block_link = file_get_contents($_file_path);
        }
    }

}

?>