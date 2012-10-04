jQuery(function() {
    return $(document).ready(function() {
        var fixPaneRefresh, getScrollTop;
        getScrollTop = function() {
            var scrOfY;
            scrOfY = 0;
            if (typeof window.pageYOffset === "number") {
                scrOfY = window.pageYOffset;
            } else if (document.body && (document.body.scrollLeft || document.body.scrollTop)) {
                scrOfY = document.body.scrollTop;
            } else if (document.documentElement && (document.documentElement.scrollLeft || document.documentElement.scrollTop)) {
                scrOfY = document.documentElement.scrollTop;
            }
            return scrOfY;
        };
        $(window).scroll(function() {
            return fixPaneRefresh();
        });
        return fixPaneRefresh = function() {
            var coordTitle, top;
            if ($(".b-actions_type_gallery").length) {
                top = getScrollTop();
                coordTitle = $('.js-gallery').offset().top;
                if (top > coordTitle) {
                    $('.b-actions_type_gallery').addClass('b-actions_state_fixed');
                } else {
                    $('.b-actions_type_gallery').removeClass('b-actions_state_fixed');
                }
            }
        };
    });
});