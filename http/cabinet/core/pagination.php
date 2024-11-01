<?php

Class pagination
{
    var $PageCount = 0;
    var $CurrentPage = 0;
    var $linkHref = '';

    // -- Темплеты --
    var $templete_pagination_area = '';
    var $templete_pagination_page = '';
    var $CONTENT = Array();

    //конструктор
    function pagination($PageCount, $CurrentPage, $linkHref)
    {
        $this -> linkHref = $linkHref;
        $this -> PageCount = $PageCount;
        $this -> CurrentPage = $CurrentPage;
        $this -> generate();
    }

    function generate()
    {
        // Прочитать шаблон главной страницы
        $this -> GetAreaTemplete();
        $this -> GetPageTemplete();

        if ($this->PageCount > 1){
            // заблокировать кнопку назад
            if ($this->CurrentPage <= 1){
                $this->templete_pagination_area = str_replace('{previous_page_disabled}', 'disabled', $this->templete_pagination_area);
                $this->templete_pagination_area = str_replace('{previous_page_value}', '1', $this->templete_pagination_area);
            }else{
                $this->templete_pagination_area = str_replace('{previous_page_disabled}', '', $this->templete_pagination_area);
                $this->templete_pagination_area = str_replace('{previous_page_value}', $this->CurrentPage-1, $this->templete_pagination_area);
            }
            // заблокировать кнопку вперед
            if ($this->CurrentPage >= $this->PageCount){
                $this->templete_pagination_area = str_replace('{next_page_disabled}', 'disabled', $this->templete_pagination_area);
                $this->templete_pagination_area = str_replace('{next_page_value}', $this->PageCount, $this->templete_pagination_area);
            }else{
                $this->templete_pagination_area = str_replace('{next_page_disabled}', '', $this->templete_pagination_area);
                $this->templete_pagination_area = str_replace('{next_page_value}', $this->CurrentPage+1, $this->templete_pagination_area);
            }

            $this->templete_pagination_area = str_replace('{currentpage}', $this->CurrentPage, $this->templete_pagination_area);


            $i = 0;
            $pages = '';
            while($i < $this->PageCount){
                $i++;
                $temppage = $this->templete_pagination_page;
                if ($i == $this->CurrentPage){
                    $temppage = str_replace('{active}', 'active', $temppage);
                }else{
                    $temppage = str_replace('{active}', '', $temppage);
                }
                $temppage = str_replace('{value}', $i, $temppage);
                $tempLinkHref = $this->linkHref;
                $tempLinkHref = str_replace('{page}', $i, $tempLinkHref);
                $temppage = str_replace('{href}', $tempLinkHref, $temppage);

                $pages .= $temppage;
            }

        }else{
            $this->templete_pagination_area = str_replace('{hidden}', 'd-none', $this->templete_pagination_area);
        }
        $this -> templete_pagination_area = str_replace('{pages}', $pages, $this -> templete_pagination_area);

        $tempLinkHref = $this->linkHref;
        if($this->CurrentPage == 1){
            $tempLinkHref = str_replace('{page}', $this->CurrentPage, $tempLinkHref);
            $this -> templete_pagination_area = str_replace('{href_prev}', $tempLinkHref, $this -> templete_pagination_area);
        } else{
            $tempLinkHref = str_replace('{page}', $this->CurrentPage - 1, $tempLinkHref);
            $this -> templete_pagination_area = str_replace('{href_prev}', $tempLinkHref, $this -> templete_pagination_area);
        }


        $tempLinkHref = $this->linkHref;
        if($this->CurrentPage == $this->PageCount){
            $tempLinkHref = str_replace('{page}', $this->CurrentPage, $tempLinkHref);
            $this -> templete_pagination_area = str_replace('{href_next}', $tempLinkHref, $this -> templete_pagination_area);
        } else {
            $tempLinkHref = str_replace('{page}', $this->CurrentPage + 1, $tempLinkHref);
            $this -> templete_pagination_area = str_replace('{href_next}', $tempLinkHref, $this -> templete_pagination_area);
        }

        // записать в контент
        $this -> CONTENT = $this -> templete_pagination_area;
    }

    // методы чтения шаблонов
    private function GetAreaTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pagination_area.html';
        if (file_exists($_file_path))
        {
            $this -> templete_pagination_area = file_get_contents($_file_path);
        }
    }
    private function GetPageTemplete(){
        $_file_path = $_SERVER["DOCUMENT_ROOT"].'/cabinet/templete/pagination_page.html';
        if (file_exists($_file_path))
        {
            $this -> templete_pagination_page = file_get_contents($_file_path);
        }
    }

}


?>