<?php

use Botble\Ads\Repositories\Interfaces\AdsInterface;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Theme\Supports\ThemeSupport;
use Botble\Shortcode\Compilers\Shortcode as ShortcodeCompiler;
use Botble\Shortcode\Facades\Shortcode;
use Botble\Shortcode\Forms\ShortcodeForm;
use Botble\Theme\Facades\Theme;

app()->booted(function () {
    ThemeSupport::registerGoogleMapsShortcode();
    ThemeSupport::registerYoutubeShortcode();
});

if (is_plugin_active('newsletter')) {
    Shortcode::register('newsletter-form', __('Newsletter Form'), __('Newsletter Form'), function ($shortCode) {
        return Theme::partial('shortcodes.newsletter-form', [
            'title' => $shortCode->title,
            'description' => $shortCode->description,
            'subtitle' => $shortCode->subtitle,
        ]);
    });

    Shortcode::setAdminConfig('newsletter-form', function ($attributes) {
        return Theme::partial('shortcodes.newsletter-form-admin-config', compact('attributes'));
    });
}

Shortcode::register('about', __('About'), __('About'), function (ShortcodeCompiler $shortcode) {
        return Theme::partial('shortcodes.about.index', compact('shortcode'));
    });

    Shortcode::setPreviewImage('about', Theme::asset()->url('images/shortcodes/about.png'));

    Shortcode::setAdminConfig('about', function (array $attributes) {
        return ShortcodeForm::createFromArray($attributes)
            ->withLazyLoading()
            ->columns()
            ->add(
                'image_1',
                MediaImageField::class,
                MediaImageFieldOption::make()
                    ->label(__('Image 1'))
            )
            ->add(
                'image_2',
                MediaImageField::class,
                MediaImageFieldOption::make()
                    ->label(__('Image 2'))
            )
            ->add(
                'subtitle',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Subtitle'))
                    ->colspan(2)
            )
            ->add(
                'title',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Title'))
                    ->colspan(2)
            )
            ->add(
                'description',
                TextareaField::class,
                TextareaFieldOption::make()
                    ->label(__('Description'))
                    ->colspan(2)
            )
            ->add(
                'feature_1',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Text Feature 1'))
                    ->colspan(2)
            )
            ->add(
                'feature_2',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Text Feature 2'))
                    ->colspan(2)
            )
            ->add(
                'feature_3',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Text Feature 3'))
                    ->colspan(2)
            )
            ->add(
                'feature_4',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Text Feature 4'))
                    ->colspan(2)
            )
            ->add(
                'feature_5',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Text Feature 5'))
                    ->colspan(2)
            )

            ->add(
                'action_label',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Action label')),
            )
            ->add(
                'action_url',
                TextField::class,
                TextFieldOption::make()
                    ->label(__('Action URL')),
            );
    });