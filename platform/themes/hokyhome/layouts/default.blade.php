<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>

        <!-- Fonts-->
        <link href="https://fonts.googleapis.com/css?family={{ urlencode(theme_option('primary_font', 'Roboto')) }}" rel="stylesheet" type="text/css">

        <style>
            :root {
                --gt-body: #fff;
                --gt-black: #000;
                --gt-white: #fff;
                --gt-theme: {{ theme_option('primary_color', '#0d6205') }};
                --gt-header: #1D1D1D;
                --gt-text: #595959;
                --gt-border: #FCFCFC;
                --gt-bg: #F2F2F2;
                --gt-box-shadow: 0px 1px 14px 0px rgba(0, 0, 0, 0.13);
            }
        </style>

        {!! Theme::header() !!}
    </head>
    <body>
        <div class="page-wrapper">
            {!! Theme::partial('header') !!}

            {!! Theme::content() !!}

            {!! Theme::partial('footer') !!}

            {!! Theme::footer() !!}
        </div>
    </body>
</html>
