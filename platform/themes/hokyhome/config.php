<?php

use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these events can be overridden by package config.
    |
    */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function($theme)
        {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme)
        {
            // Partial composer.
            // $theme->partialComposer('header', function($view) {
            //     $view->with('auth', \Auth::user());
            // });

            // You may use this event to set up your assets.
            $theme->asset()->usePath()->add('bootstrap-css', 'css/bootstrap.min.css')
            ->usePath()->add('all-css', 'css/all.min.css')
            ->usePath()->add('animate-css', 'css/animate.css')
            ->usePath()->add('magnific-popup-css', 'css/magnific-popup.css')
            ->usePath()->add('meanmenu-css', 'css/meanmenu.css')
            ->usePath()->add('swiper-bundle-css', 'css/swiper-bundle.min.css')
            ->usePath()->add('splitting-css', 'css/splitting.css')
            ->usePath()->add('nice-select-css', 'css/nice-select.css')
            ->usePath()->add('rtl-css', 'css/rtl.css')
            ->usePath()->add('box-layout-css', 'css/box-layout.css')
            ->usePath()->add('slick-css', 'css/slick.css')
            ->usePath()->add('icomon-css', 'css/icomon.css')
            ->usePath()->add('main-css', 'css/main.css');


            $theme->asset()->container('footer')
            ->usePath()->add('query', 'js/query-3.7.1.min.js')
            ->usePath()->add('slick-js', 'js/slick.min.js')
            ->usePath()->add('viewport', 'js/viewport.jquery.js')
            ->usePath()->add('bootstrap-js', 'js/bootstrap.bundle.min.js')
            ->usePath()->add('nice-select-js', 'js/jquery.nice-select.min.js')
            ->usePath()->add('waypoints-js', 'js/jquery.waypoints.js')
            ->usePath()->add('counterup-js', 'js/jquery.counterup.min.js')
            ->usePath()->add('swiper-js', 'js/swiper-bundle.min.js')
            ->usePath()->add('meanmenu-js', 'js/jquery.meanmenu.min.js')
            ->usePath()->add('magnific-js', 'js/jquery.magnific-popup.min.js')
            ->usePath()->add('splitting', 'js/splitting.js')
            ->usePath()->add('wow', 'js/wow.min.js')
            ->usePath()->add('splitting-animation', 'js/splitting-animation.js')
            ->usePath()->add('template-settings', 'js/template-settings.js.js')
            ->usePath()->add('main', 'js/main.js');

            if (function_exists('shortcode')) {
                $theme->composer(['page', 'post'], function (\Botble\Shortcode\View\View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function ($theme)
            {
                // $theme->asset()->usePath()->add('ipad', 'css/layouts/ipad.css');
            }
        ]
    ]
];
