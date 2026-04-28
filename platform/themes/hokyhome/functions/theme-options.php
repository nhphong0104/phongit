<?php

app()->booted(function () {
    theme_option()
        ->setField([
            'id'         => 'copyright',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Copyright'),
            'attributes' => [
                'name'    => 'copyright',
                'value'   => __('© :year Your Company. All right reserved.', ['year' => now()->format('Y')]),
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change copyright'),
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Copyright on footer of site'),
        ])
        ->setField([
            'id'         => 'primary_font',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'googleFonts',
            'label'      => __('Primary font'),
            'attributes' => [
                'name'  => 'primary_font',
                'value' => 'Roboto',
            ],
        ])
        ->setField([
            'id'         => 'primary_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Primary color'),
            'attributes' => [
                'name'  => 'primary_color',
                'value' => '#ff2b4a',
            ],
        ])
         ->setField([
            'id'         => 'secondary_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Secondary color'),
            'attributes' => [
                'name'  => 'secondary_color',
                'value' => '#ff2b4a',
            ],
         ])
         ->setField([
            'id'         => 'heading_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Heading color'),
            'attributes' => [
                'name'  => 'heading_color',
                'value' => '#ff2b4a',
            ],
         ])
         ->setField([
            'id'         => 'paragraph_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Paragraph color'),
            'attributes' => [
                'name'  => 'paragraph_color',
                'value' => '#ff2b4a',
            ],
         ])
         ->setField([
            'id'         => 'background_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Background color'),
            'attributes' => [
                'name'  => 'background_color',
                'value' => '#ffffff',
            ],
         ])
         ->setSection([
            'id' => 'opt-text-subsection-company',
            'title' => __('Company'),
            'desc' => __('Company settings of the theme'),
            'icon' => 'fa fa-building',
         ])
         ->setField([
            'id'         => 'company_name',
            'section_id' => 'opt-text-subsection-company',
            'type'       => 'text',
            'label'      => __('Company name'),
            'attributes' => [
                'name'  => 'company_name',
                'value' => __('Your Company'),
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change company name'),
                    'data-counter' => 250,
                ],
            ]
         ])
        ->setField([
            'id'         => 'company_address',
            'section_id' => 'opt-text-subsection-company',
            'type'       => 'text',
            'label'      => __('Company address'),
            'attributes' => [
                'name'  => 'company_address',
                'value' => __('Your company address'),
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change company address'),
                    'data-counter' => 250,
                ],
            ]
        ])
        ->setField([
            'id'         => 'company_phone',
            'section_id' => 'opt-text-subsection-company',
            'type'       => 'text',
            'label'      => __('Company phone'),
            'attributes' => [
                'name'  => 'company_phone',
                'value' => __('Your company phone'),
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change company phone'),
                    'data-counter' => 250,
                ],
            ]
        ])
        ->setField([
            'id'         => 'company_email',
            'section_id' => 'opt-text-subsection-company',
            'type'       => 'text',
            'label'      => __('Company email'),
            'attributes' => [
                'name'  => 'company_email',
                'value' => __('Your company email'),
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change company email'),
                    'data-counter' => 250,
                ],
            ]
         ])
         ->setField([
            'id'         => 'company_map',
            'section_id' => 'opt-text-subsection-company',
            'type'       => 'textarea',
            'label'      => __('Company map'),
            'attributes' => [
                'name'  => 'company_email',
                'value' => __('Your company email'),
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change company email'),
                    'data-counter' => 250,
                ],
            ]
         ])
                 
         ;
        
});
