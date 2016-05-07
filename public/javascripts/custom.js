(function($) {
    "use strict";

	window.onload = function(){
	    $(".bt-loading").fadeOut("1500", function(){
	        $('#bt_loading').css("display", "none");
            if($('#notificationModal').length >0){
                $('#notificationModal').modal('show');
            }
	    });
	};

    

    /* Scroll Top */
    jQuery(window).scroll(function() {

        /* Header Menu */
        var height_header = $('#top').height() + $('header').height();
        if ($(window).scrollTop() > height_header){
            $('header').addClass('boss_scroll');
        }else{
            $('header').removeClass('boss_scroll');
        }

        /* Back Top Setting */
	    if ($(this).scrollTop() > 600) {
	        $('#back_top').fadeIn();
	    } else {
	        $('#back_top').fadeOut();
	    }

	});

	/* Back Top */
	$("#back_top").on('click',function(e) {
	    e.preventDefault();
	    $('body,html').animate({
	        scrollTop: 0
	    }, 800, 'swing');
	});

})(jQuery);

function getMaxHeight($elms){
    var maxHeight = 0;
    $($elms).each(function()
    {
        var height = $(this).outerHeight();
        if (height > maxHeight)
        {
            maxHeight = height;
        }
    });
    return maxHeight;
};