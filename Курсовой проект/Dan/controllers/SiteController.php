<?php


class SiteController
{
    public function actionIndex(){


        $news = array();
        $news =News::getNewsListInMainPage(6);
        $news_category=array();
        $news_category = News::getNewsListByCategory(4);

        require_once(ROOT.'/views/index.php');
        return true;
    }

    public function actionSearch(){

        $search= $_GET['search'];
        if($search) {
            $search_news = News::searchNews($search);
        }

        require_once(ROOT.'/views/search.php');
        return true;
    }

}