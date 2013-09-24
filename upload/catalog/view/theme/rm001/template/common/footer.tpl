</div>
<footer>
    <div id="footer" class="container">
        <div id="footerUpper" class="row">
            <div class="col-lg-2 col-md-2 col-sm-6">
                <h5><?php echo $text_information; ?></h5>
                <ul>
                    <?php foreach ($informations as $information) { ?>
                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                </ul>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-6">
                <h5><?php echo $text_service; ?></h5>
                <ul>
                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                    <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                    <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-6">
                <h5><?php echo $text_extra; ?></h5>
                <ul>
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-6">
                <h5><?php echo $text_account; ?></h5>
                <ul>
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12">
                <a href='http://www.pinterest.com/' class='social-icon pinterest' title='Facebook'>Pinterest</a>
                <a href='http://www.twitter.com/' class='social-icon tweet' title='Tweeter'>Tweeter</a>
                <a href='http://www.skype.com/' class='social-icon skype' title='Skype'>Skype</a>
                <a href='http://www.google.com/' class='social-icon google' title='Google+'>Google+</a>
                <a href='http://www.facebook.com/' class='social-icon facebook' title='Facebook'>Facebook</a>
            </div>
        </div>
    </div>
    <div id="powered" class="container">
        <div class="pull-left">
            Power By <a href="http://www.opencart.com" title="Opencart" target="_blank">Opencart</a>
            &nbsp; | &nbsp; Support By <a href="http://www.scala-solution.com.au" target="_blank">Scala Solution</a>  <?php echo date("Y");?>
        </div>
        <div class="pull-right visible-md visible-lg">
            <span id='icon-payment'></span>
        </div>
    </div>
</footer>
<script type="text/javascript" src="catalog/view/theme/rm001/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/rm001/js/shoes_custom.js"></script>
<script type="text/javascript" src="catalog/view/theme/rm001/js/cloud_zoom.js"></script>


<!-- begin scroll to top button //-->
<script type='text/javascript'>
    $(function () {
        $.fn.scrollToTop = function () {
            $(this).hide().removeAttr("href");
            if ($(window).scrollTop() != "0") {
                $(this).fadeIn("slow")
            }
            var scrollDiv = $(this);
            $(window).scroll(function () {
                if ($(window).scrollTop() == "0") {
                    $(scrollDiv).fadeOut("slow")
                } else {
                    $(scrollDiv).fadeIn("slow")
                }
            });
            $(this).click(function () {
                $("html, body").animate({
                    scrollTop: 0
                }, "slow")
            })
        }
    });
    $(function () {
        $("#scroll-to-top").scrollToTop();
    });
</script>
<a href='#' id='scroll-to-top' style='display:none;'></a>
<!-- end scroll to top button //-->

<!-- begin social icons JQUERY //-->
<script type="text/javascript">
    $(document).ready(function () {
        $("#social-icons-jqueryanime li").each(function () {
            $("a strong", this).css("opacity", "0");
        });
        $("#social-icons-jqueryanime li").hover(function () {
            $(this).stop().fadeTo(500, 1).siblings().stop().fadeTo(500, 0.2);
            $("a strong", this).stop().animate({
                opacity: 1,
                top: "-15px"
            }, 300);
        }, function () {
            $(this).stop().fadeTo(500, 1).siblings().stop().fadeTo(500, 1);
            $("a strong", this).stop().animate({
                opacity: 0,
                top: "-1px"
            }, 300);
        });
    });
</script>
<!-- end social icons JQUERY //-->
</body>
</html>
