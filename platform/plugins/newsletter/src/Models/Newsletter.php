<?php

namespace Botble\Newsletter\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Models\BaseModel;
use Botble\Newsletter\Enums\NewsletterStatusEnum;

class Newsletter extends BaseModel
{
    protected $table = 'newsletters';

    protected $fillable = [
        'email',
        'name',
        'phone',
        'product_category_id',
        'status',
    ];

    protected $casts = [
        'name' => SafeContent::class,
        'status' => NewsletterStatusEnum::class,
    ];
}
