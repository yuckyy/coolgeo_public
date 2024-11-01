<?php


Class reviews_pagelist
{
    // данные
    var $templete_review = '';
    var $templete_reviews_list= '';

    var $review_count_on_page = 10;
    var $current_page;


    var $reviews_data = Array();

    var $CONTENT = Array();

    //конструктор
    function reviews_pagelist($current_page)
    {
        $this -> current_page = $current_page;

        $this -> GetTemplete_review();
        $this -> GetTemplete_reviews_list();

        //include 'settings/reviews/reviews_page_data.php';
        include $_SERVER['DOCUMENT_ROOT'].'/generator/settings/reviews/reviews_page_data.php';
        $this -> reviews_data = $ReviewsPageData;

        $this -> generate();
    }

    function generate()
    {
        /*
        echo '<pre>';
        print_r($this -> reviews_data);
        echo '</pre>';
        */


        $reviews_data_reverse = array_reverse($this -> reviews_data);

        $reviews_current_page = "";
        $i = 0;
        $page_i = 0;
        $page_number = 0;
        $ActivePage = 0;

        $start_review = ($this -> current_page - 1) * $this -> review_count_on_page + 1;
        $end_review = $start_review + $this -> review_count_on_page - 1;

        $Pages = Array();

        Foreach ($reviews_data_reverse as $reviev_data){


            $i++;
            $page_i++;

            if ($page_i == 1){
                $page_number ++;
                if ($page_number == $this -> current_page){
                    $Pages[$page_number]['page'] = $page_number;
                    $Pages[$page_number]['class'] = 'page-button disabled';
                }else{
                    $Pages[$page_number]['page'] = $page_number;
                    $Pages[$page_number]['class'] = 'page-button';
                }
            }
            if ($page_i == $this -> review_count_on_page){
                $page_i = 0;
            }

            if ($i >= $start_review and $i <= $end_review){
                /*
                echo '<pre>';
                print_r($reviev_data);
                echo '</pre>';
                */

                $temp_review = $this -> templete_review;

                //btn-default btn-grey
                //btn-warning
                $temp_review = str_replace('{Name}', $reviev_data['Name'], $temp_review);
                $temp_review = str_replace('{DateTime}', $reviev_data['DateTime'], $temp_review);
                $temp_review = str_replace('{Country}', $reviev_data['Country'], $temp_review);
                $temp_review = str_replace('{ReviewHeader}', $reviev_data['ReviewHeader'], $temp_review);
                $temp_review = str_replace('{ReviewText}', $reviev_data['ReviewText'], $temp_review);
                // Stars
                if ($reviev_data['Stars'][0] == 1){
                    $temp_review = str_replace('{star_1}', 'btn-warning', $temp_review);
                } else{
                    $temp_review = str_replace('{star_1}', 'btn-default btn-grey', $temp_review);
                }

                if ($reviev_data['Stars'][1] == 1){
                    $temp_review = str_replace('{star_2}', 'btn-warning', $temp_review);
                } else{
                    $temp_review = str_replace('{star_2}', 'btn-default btn-grey', $temp_review);
                }

                if ($reviev_data['Stars'][2] == 1){
                    $temp_review = str_replace('{star_3}', 'btn-warning', $temp_review);
                } else{
                    $temp_review = str_replace('{star_3}', 'btn-default btn-grey', $temp_review);
                }

                if ($reviev_data['Stars'][3] == 1){
                    $temp_review = str_replace('{star_4}', 'btn-warning', $temp_review);
                } else{
                    $temp_review = str_replace('{star_4}', 'btn-default btn-grey', $temp_review);
                }

                if ($reviev_data['Stars'][4] == 1){
                    $temp_review = str_replace('{star_5}', 'btn-warning', $temp_review);
                } else{
                    $temp_review = str_replace('{star_5}', 'btn-default btn-grey', $temp_review);
                }

                $reviews_current_page .= $temp_review;

            }
        }



        $this -> templete_reviews_list = str_replace('{reviews_list}', $reviews_current_page, $this -> templete_reviews_list);


        // отрисовать странички
        $review_pages = "";
        Foreach ($Pages as $page){
            $review_pages .= '<li><a href="#" class="'.$page['class'].'" page-number="'.$page['page'].'">'.$page['page'].'</a></li>';
        }

        $this -> templete_reviews_list = str_replace('{review_pages}', $review_pages, $this -> templete_reviews_list);


        //записать содержимое
        $this -> CONTENT = $this -> templete_reviews_list;
    }

    private function GetTemplete_review(){
        $_file_path = $_SERVER['DOCUMENT_ROOT'].'/generator/templete/reviews_page_review.html';
        if (file_exists($_file_path))
        {
            $this -> templete_review = file_get_contents($_file_path);
        }
    }

    private function GetTemplete_reviews_list(){
        $_file_path = $_SERVER['DOCUMENT_ROOT'].'/generator/templete/reviews_page_reviews_list.html';
        if (file_exists($_file_path))
        {
            $this -> templete_reviews_list = file_get_contents($_file_path);
        }
    }


}



?>