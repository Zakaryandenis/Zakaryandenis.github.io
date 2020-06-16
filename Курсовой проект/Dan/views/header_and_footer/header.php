<!DOCTYPE HTML>
<html lang="ru">
<head>
    <title>Ednews</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,600,700" rel="stylesheet">

    <!-- Stylesheets -->

    <link href="/template/plugin-frameworks/bootstrap.css" rel="stylesheet">

    <link href="/template/fonts/ionicons.css" rel="stylesheet">
    <link href="/template/common/styles.css" rel="stylesheet">
</head>
<body>
<header>

    <div class="middle-header mtb-20 mt-xs-0">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <a class="logo" href="/"><img src="/template/images/logo-black.png" alt="Logo"></a>
                </div><!-- col-sm-4 -->
                <div class="offset-sm-4 col-sm-4 float-right">
                    <?php if (User::isGuest()):?>
                    <div class="auth logo float-right"><a href="/user/register/">Регистрация</a> / <a href="/user/login/">Вход</a></div>
                    <?php else:?>
                        <div class="auth logo float-right"><?echo $_SESSION['userLogin'];?>/<a href="/user/logout/">Выйти</a></div>
                    <?php endif;?>
                </div>
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- top-header -->


<?$categorys=array();$categorys=News::getCategorys();?>
    <div class="bottom-menu">
        <div class="container">
            <div class="row">
                <a class="menu-nav-icon" data-menu="#main-menu" href="#"><i class="ion-navicon"></i></a>
                <div class="col-md-8 col-lg-9">
                    <ul class="main-menu" id="main-menu">

                        <li class="drop-down"><a href="/">Главная<i class="ion-chevron-down"></i></a>
                            <ul class="drop-down-menu drop-down-inner">
                                <li><a href="/">Главная</a></li>
                            </ul>
                        </li>
                        <li class="drop-down"><a href="#!">Категории<i class="ion-chevron-down"></i></a>
                            <ul class="drop-down-menu drop-down-inner">
                                <?foreach ($categorys as $category){?>
                                <li><a href="/category/<?echo $category['id_categ']?>"><?echo $category['name']?></a></li>
                                <?}?>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 col-lg-3">
                    <form class="abs-form mtb-10" method="get" action="/search/">
                        <input type="text" placeholder="Поиск" name="search">
                        <button type="submit"><i class="ion-ios-search"></i></button>
                    </form>
                </div>
            </div>

        </div>
    </div>
</header>



