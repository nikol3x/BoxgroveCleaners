/// <summary>
/// Client functionality for the home page.
/// </summary>
$(document).ready(function () {
    // Initialize
    SetupJqueryUI();
    SetupGoogleMaps();
    SetupStaticHeader();
    SetupSinglePageNav();
    SetupScrollNav();
    PositionSunRays();
    SetupSlider();
});

function SetupSlider() {
    $('#pnlSliderContainer > div > div').removeClass('hidden');

    var options = {
        $AutoPlay: true
        , $AutoPlayInterval: 8000
        , $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
            $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
            $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
            $AutoCenter: 0,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
            $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
            $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
            $SpacingX: 10,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
            $SpacingY: 10,                                   //[Optional] Vertical space between each item in pixel, default value is 0
            $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
        },
    };
    var jssor_slider = new $JssorSlider$('pnlSliderContainer', options);
}

function PositionSunRays() {
    var thresholdWidth = 1400;
    var $sunraysElmt = $('#pnlSunrays');

    $sunraysElmt.addClass('banner__sunrays');

    position();

    window.addEventListener('resize', position);

    function position()
    {
        var windowWidth = $(document).width();
        var leftPosition = (windowWidth / 2) - (thresholdWidth / 2);

        $sunraysElmt.css('background-position', leftPosition + 'px 0px');
    }
}

function SetupScrollNav() {
    /// <summary>
    /// Used to scroll to the specific services
    /// </summary>
    $('[data-js-hook="scrollnav"]').click(function (evt) {
        var link = $(evt.target).attr('href');
        var linkId = '#' + link.substring(link.indexOf('#') + 1);
        var $section = $(linkId);

        if ($section.size() === 1) {
            $('nav li').removeClass('nav__link--selected').eq(1).addClass('nav__link--selected');

            $.scrollTo($section.offset().top - 40, 500);
        }

        evt.preventDefault();
    });
}

function SetupSinglePageNav() {
    /// <summary>
    /// Scroll navigation for the nav bar
    /// </summary>
    $('[data-js-hook="singlepagenav"]').click(function (evt) {
        var link = $(evt.target).attr('href');
        var linkId = '#pnl' + link.substring(link.lastIndexOf('/') + 1, link.indexOf('.aspx'));
        var $section = $(linkId);

        if ($section.size() === 1) {
            ToggleSelectedStyle($(evt.target));
            $.scrollTo($section.offset().top - 40, 500);
        }

        evt.preventDefault();
    });

    function ToggleSelectedStyle($lnkElmt) {
        var $elmt = $lnkElmt.parent('li');

        $('nav li').removeClass('nav__link--selected');

        if ($elmt && $elmt.size() === 1) {
            $lnkElmt.parent('li').addClass('nav__link--selected');
        } else {
            var index = parseInt($lnkElmt.attr('data-nav-index'), 10);

            if (index && isNaN(index) === false) {
                $('nav li').eq(index).addClass('nav__link--selected');
            }
        }
    }
}

function SetupStaticHeader() {
    var $header = $('header');
    var $main = $('main');
    var $logo = $('#pnlLogo');

    window_onscroll();

    window.onscroll = window_onscroll;

    function window_onscroll()
    {
        var headerHeight = $header.outerHeight();
        var top = window.pageXOffset
            ? window.pageXOffset
            : document.documentElement.scrollTop
                ? document.documentElement.scrollTop
                : document.body.scrollTop;

        if (top > 10) {
            $header.addClass('nav-header--fixed');
            $main.css('margin-top', headerHeight);
            $logo.css('top', top * -1);
        } else {
            $header.removeClass('nav-header--fixed');
            $main.css('margin-top', '0');
            $logo.css('top', '0');
        }
    }
}

function SetupJqueryUI() {
    $('#laundryFaqsAccordion').accordion({
        heightStyle: 'content'
        , collapsible: true
    });
}

function SetupGoogleMaps() {
    var mapCanvas = document.getElementById('pnlMap');
    var myLatLng = { lat: 43.8603448, lng: -79.2248218 };
    var mapOptions = {
        center: myLatLng
        , scrollwheel: false
        , zoom: 17
        , mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(mapCanvas, mapOptions);

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Boxgrove Cleaners'
    });
}