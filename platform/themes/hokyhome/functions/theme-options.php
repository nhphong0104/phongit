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
            'id'         => 'company_name',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Company Name'),
            'attributes' => [
                'name'  => 'company_name',
                'placeholder' => __('Change company name'),
            ],
        ])
        ->setField([
            'id'         => 'company_address',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Company address'),
            'attributes' => [
                'name'  => 'company_address',
                'placeholder' => __('Change company address'),
            ],
        ])
        ->setField([
            'id'         => 'company_phone',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Company phone'),
            'attributes' => [
                'name'  => 'company_phone',
                'placeholder' => __('Change company phone'),
            ],
        ])
        ->setField([
            'id'         => 'company_email',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Company email'),
            'attributes' => [
                'name'  => 'company_email',
                'placeholder' => __('Change company email'),
            ],
        ])
        ->setField([
            'id'         => 'company_facebook',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Company Facebook'),
            'attributes' => [
                'name'  => 'company_facebook',
                'placeholder' => __('Change company Facebook'),
            ],
        ])
        ;
});
