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


    // social icons
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

$(document).ready(function(){
    $("#scroll-to-top").scrollToTop();
//
//    $('#cart').popover({
//        'html': true,
//        'placement': 'bottom'
//    });
//
    $('#cart').popover({
        placement: "bottom",
        trigger: 'click',
        html: true,
//        container: 'body',
        content: function() {return $('#cart .content').html();}
    })
    .on('show.bs.popover', function(){
        $('#cart').load('index.php?route=module/cart #cart > *');
    });


});
