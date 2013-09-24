<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html>
<html>
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rm001/libs/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/rm001/stylesheet/main.css" />
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/rm001/stylesheet/stylesheet.css" />
    <!--

-->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rm001/stylesheet/carousel.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>


<!--[if lt IE 9]>
<script src="catalog/view/theme/rm001/libs/bootstrap/assets/js/html5shiv.js"></script>
<script src="catalog/view/theme/rm001/libs/bootstrap/assets/js/respond.min.js"></script>
<![endif]-->
<!--
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
-->
    <script type="text/javascript" src="catalog/view/theme/rm001/libs/jquery-1.10.2.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>


<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body>

<!--<div id="container">-->
<div id="top-container" class="navbar hidden-xs">
    <div class="container">
        <div class="pull-left" >
            <?php echo $language; ?>
            <?php echo $currency; ?>
        </div>

        <div class="links pull-right" id="header-links">

            <a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>&nbsp; | &nbsp;
            <a href="<?php echo $wishlist; ?>" id="wishlist-total" class="wishlist_link"><?php echo $text_wishlist; ?></a>&nbsp; | &nbsp;
            <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>&nbsp; | &nbsp;
            <a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>&nbsp; | &nbsp;
            <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
        </div>
    </div>
</div>
<div id="header-container" class="container">
    <div id="header">
        <?php if ($logo): ?>
        <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
        <?php endif; ?>
        <div id="welcome"><?php echo (!$logged) ? $text_welcome : $text_logged; ?></div>
        <?php echo $cart; ?>
        <div id='header_btm'>
            <div id="search">
                <div class="search_inside">
                    <?php if (!empty($filter_name)) { ?>
                    <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" placeholder="<?php echo $text_search; ?>" />
                    <?php } else { ?>
                    <input type="text" name="filter_name" value="<?php echo $text_search; ?>" placeholder="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#444444';" />
                    <?php } ?>
                    <div class="button-search"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php if ($categories): ?>
<div class="container">
    <!-- Fixed navbar -->
    <div class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <?php foreach ($categories as $category): ?>
                    <li class="<?php if ($category['children']) echo "dropdown"; ?>">
                        <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown">
                            <?php echo strtoupper($category['name']); ?>
                            <?php if (!empty($category['children'])): ?><b class="caret"></b><?php endif;?>
                        </a>
                        <?php if ($category['children']): ?>
                            <ul class="dropdown-menu">
                            <?php for ($i = 0; $i < count($category['children']);): ?>

                                <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                                <?php for (; $i < $j; $i++) : ?>
                                <?php if (isset($category['children'][$i])): ?>
                                <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                                <?php endif; ?>
                                <?php endfor ?>
                            <?php endfor; ?>
                            </ul>
                        <?php endif; ?>
                    </li>
                    <?php endforeach; ?>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
<?php endif; ?>
<div class="container">
<div id="notification"></div>

