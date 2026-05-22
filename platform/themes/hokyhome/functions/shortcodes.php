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
use Botble\Shortcode\Compilers\Shortcode;
use Botble\Shortcode\Compilers\ShortcodeCompiler;
use Botble\Shortcode\Forms\ShortcodeForm;
use Botble\Theme\Facades\Theme;

app()->booted(function () {
    ThemeSupport::registerGoogleMapsShortcode();
    ThemeSupport::registerYoutubeShortcode();
});

if (is_plugin_active('newsletter')) {
    add_shortcode('newsletter-form', __('Newsletter Form'), __('Newsletter Form'), function ($shortCode) {
        return Theme::partial('shortcodes.newsletter-form', [
            'title' => $shortCode->title,
            'description' => $shortCode->description,
            'subtitle' => $shortCode->subtitle,
        ]);
    });

    shortcode()->setAdminConfig('newsletter-form', function ($attributes) {
        return Theme::partial('shortcodes.newsletter-form-admin-config', compact('attributes'));
    });
}

shortcode()->register('about', __('About'), __('About'), function (ShortcodeCompiler $shortcode) {
        return Theme::partial('shortcodes.about.index', compact('shortcode'));
    });

    shortcode()->setPreviewImage('about', Theme::asset()->url('images/shortcodes/about.png'));

    shortcode()->setAdminConfig('about', function (array $attributes) {
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