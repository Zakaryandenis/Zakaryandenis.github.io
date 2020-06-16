<?php


class NewsController
{
    public function actionView($id){

        $new = array();
        $new = News::getNewsByID($id);
        $news_category=array();
        $news_category = News::getNewsListByCategory(4);
        $comments =  News::getCommentsList($id);
//        require_once(ROOT.'/views/index.php');
        require_once(ROOT.'/views/single_post.php');
        return true;
    }


    public function actionView_comment($idNews){
        $text = $_POST['text'];
        $date = date("Y:m:d H:i:s");

        $text = str_ireplace("<",'&lt',$text);

        if(News::sendComment($_SESSION['user'],$idNews,$text,$date)) {
            echo '
<div>
<h5>
<b>'.$_SESSION['userLogin'].'</b>
<span class="ml-10 color-ash font-8"> '.$date.'</span></h5>
<p class="mt-5 mb-10">'.$text.'</p>
</div><!-- s-left -->
							';
        }
        return true;
    }
}