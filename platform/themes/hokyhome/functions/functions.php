<?php
use Botble\Ads\Forms\AdsForm;
use Botble\Ads\Models\Ads;
use Botble\Base\Forms\FieldOptions\CheckboxFieldOption;
use Botble\Base\Forms\FieldOptions\InputFieldOption;
use Botble\Base\Forms\FieldOptions\MediaImageFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\ColorField;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\OnOffCheckboxField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\TextField;
use Botble\LanguageAdvanced\Supports\LanguageAdvancedManager;
use Botble\Media\Facades\RvMedia;
use Botble\Newsletter\Facades\Newsletter;
use Botble\SimpleSlider\Forms\SimpleSliderItemForm;
use Botble\SimpleSlider\Support\SimpleSliderSupport;

register_page_template([
    'default' => 'Default',
]);

register_sidebar([
    'id'          => 'second_sidebar',
    'name'        => 'Second sidebar',
    'description' => 'This is a sample sidebar for hokyhome theme',
]);

    if (is_plugin_active('newsletter')) {
        Newsletter::registerNewsletterPopup();
    }
    if (is_plugin_active('ads')) {
        AdsForm::extend(function (AdsForm $form) {
            $form
                ->addAfter(
                    'name',
                    'title',
                    TextareaField::class,
                    TextareaFieldOption::make()->label(__('Title'))->metadata()
                )
                ->addAfter(
                    'title',
                    'subtitle',
                    TextareaField::class,
                    TextareaFieldOption::make()->label(__('Subtitle'))->metadata()
                )
                ->addAfter(
                    'subtitle',
                    'button_label',
                    TextField::class,
                    TextFieldOption::make()->label(__('Button label'))->metadata()
                );
        });

        if (is_plugin_active('language-advanced')) {
            LanguageAdvancedManager::registerModule(Ads::class, [
                'name',
                'image',
                'url',
                'title',
                'subtitle',
                'button_label',
            ]);
        }
    }

    if (is_plugin_active('simple-slider')) {
        SimpleSliderItemForm::extend(function (SimpleSliderItemForm $form) {
            $form
                ->addAfter(
                    'title',
                    'subtitle',
                    TextField::class,
                    TextFieldOption::make()->label(__('Subtitle'))->metadata()
                )
                ->addAfter(
                    'link',
                    'button_label',
                    TextField::class,
                    TextFieldOption::make()
                        ->label(__('Button label'))
                        ->helperText(__('Leave empty to hide button'))
                        ->metadata()
                )
                ->addAfter(
                    'image',
                    'background_color',
                    ColorField::class,
                    InputFieldOption::make()->label(__('Background color'))->metadata()
                )
                ->addAfter(
                    'background_color',
                    'is_light',
                    OnOffCheckboxField::class,
                    CheckboxFieldOption::make()->label(__('Background color is light?'))->metadata()
                );
        });

        SimpleSliderSupport::registerResponsiveImageSizes();
    }

RvMedia::setUploadPathAndURLToPublic();
