<div id="latest-slider-container" class="container carousel">
    <h1 class="general_heading"><span><?php echo $heading_title; ?></span></h1>
    <ul id="latest-slider" >
        <?php foreach ($products as $product): ?>
        <li>
            <div class='product-holder'>
                <div class="product">
                    <div class="special_new"></div>
                    <?php if ($product['special']) echo '<div class="special_promo1"></div>';?>
                    <a class="name" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                    <a class="image" href="<?php echo $product['href']; ?>">
                        <?php if ($product['thumb_swap']): ?>
                        <img oversrc="<?php echo $product['thumb_swap']; ?>" src="<?php echo $product['thumb']; ?>"
                             title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>"
                             style="border:none"/>
                        <?php else: ?>
                        <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" style="border:none"/>
                        <?php endif; ?>
                    </a>
                    <div class="info">
                        <?php if ($product['price']): ?>
                        <div class="price">
                            <?php if (!$product['special']): ?>
                            <?php echo $product['price']; ?>
                            <?php else: ?>
                            <span class="old"><?php echo $product['price']; ?></span>
                            <span class="new"><?php echo $product['special']; ?></span>
                            <?php endif; ?>
                        </div>
                        <?php endif; ?>
                        <div class="cart">
                            <a class='button' onclick="addToCart('<?php echo $product['product_id']; ?>');">
                                <span><?php echo $button_cart; ?></span>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </li>
        <?php endforeach;?>
    </ul>
    <?php if(count($products)>4) : ?>
    <a href="#" class="prev" id="latest-slider-prev"></a>
    <a href="#" class="next" id="latest-slider-next"></a>
    <?php endif; ?>

<script type="text/javascript">
    function resetVisibleNumber() {
        var el = $('#latest-slider');
        var elWidth = el.width();
        var count = 5;
        if (elWidth <= 480)
            count = 1;
        else if (elWidth <= 779 && elWidth > 480)
            count = 3;
        else if (elWidth > 780 && elWidth <= 960)
            count = 4;
//        console.log(count);
//        $('#latest-slider .cycle-slideshow').cycle('carousel-visible', count);

    }

//    $(document).ready(function() {
//        resetVisibleNumber();
//    });
//
//    $(window).resize(function() {
//        resetVisibleNumber();
//    });

    $(window).load(function() {
        $('#latest-slider').flexisel({
            visibleItems: 4,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint:480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint:640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint:987,
                    visibleItems: 3
                }
            }
        });
//        $("#latest-slider .cycle-slideshow").flexisel();
//        $("#flexiselDemo2").flexisel({
//            enableResponsiveBreakpoints: true,
//            responsiveBreakpoints: {
//                portrait: {
//                    changePoint:480,
//                    visibleItems: 1
//                },
//                landscape: {
//                    changePoint:640,
//                    visibleItems: 2
//                },
//                tablet: {
//                    changePoint:768,
//                    visibleItems: 3
//                }
//            }
//        });
//
//        $("#flexiselDemo3").flexisel({
//            visibleItems: 5,
//            animationSpeed: 1000,
//            autoPlay: true,
//            autoPlaySpeed: 3000,
//            pauseOnHover: true,
//            enableResponsiveBreakpoints: true,
//            responsiveBreakpoints: {
//                portrait: {
//                    changePoint:480,
//                    visibleItems: 1
//                },
//                landscape: {
//                    changePoint:640,
//                    visibleItems: 2
//                },
//                tablet: {
//                    changePoint:768,
//                    visibleItems: 3
//                }
//            }
//        });
//
//        $("#flexiselDemo4").flexisel({
//            clone:false
//        });

    });

</script>
</div>
