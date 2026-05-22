<section class="section pt-15 pb-15 mb-15" @if ($shortcode->background_color) style="background-color: {{ $shortcode->background_color }} !important;" @endif>
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="page-content">
                    <div class="post-group post-group--single">
                        <div class="post-group__header">
                            <h3 class="post-group__title">{{ $title }}</h3>
                        </div>
                        <div class="post-group__content">
                            @foreach ($posts as $post)
                                <article class="post post__horizontal mb-40 clearfix">
                                    <div class="post__thumbnail">
                                        {{ RvMedia::image($post->image, $post->name, 'medium') }}
                                        <a
                                            class="post__overlay"
                                            href="{{ $post->url }}"
                                            title="{{ $post->name }}"
                                        ></a>
                                    </div>
                                    <div class="post__content-wrap">
                                        <header class="post__header">
                                            <h3 class="post__title">
                                                <a href="{{ $post->url }}"
                                                    title="{{ $post->name }}"
                                                >{{ $post->name }}</a>
                                            </h3>
                                            <div class="post__meta">
                                                {!! Theme::partial('blog.post-meta', compact('post')) !!}
                                            </div>
                                        </header>
                                        <div class="post__content p-0">
                                            <p>{{STR::limit($post->description,180)  }}</p>
                                        </div>
                                    </div>
                                </article>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="page-sidebar">
                    <div class="widget widget__recent-post" style="position: sticky; top: 150px">
                        <div class="widget__header">
                            <h3 class="widget__title">Khám phá - Trending</h3>
                        </div>
                        <div class="widget__content">
                            <ul>
                                @foreach(get_popular_posts(5) as $post)
                                    <li>
                                        <article class="post post__widget clearfix">
                                            <div class="post__thumbnail">
                                                {{ RvMedia::image($post->image, $post->name, 'thumb') }}
                                                <a class="post__overlay" href="{{ $post->url }}"
                                                   title="{{ $post->name }}"
                                                ></a>
                                            </div>
                                            <header class="post__header">
                                                <h4 class="post__title text-truncate-2">
                                                    <a class="post__overlay" href="{{ $post->url }}"
                                                       title="{{ $post->name }}"
                                                    >{{ $post->name }}</a>
                                                </h4>
                                            </header>
                                        </article>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="tp-blog-area pt-50 pb-50">
    <div class="container">
        <div class="row align-items-center mb-40">
            <div class="col-xl-4 col-md-6">
                {!! Theme::partial('section-title', compact('shortcode')) !!}
            </div>
            <div class="col-xl-8 col-md-6">
                @if(($buttonLabel = $shortcode->button_label) && ($buttonUrl = $shortcode->button_url ?: get_blog_page_url()))
                    <div class="tp-blog-more-wrapper d-flex justify-content-md-end">
                        <div class="tp-blog-more text-md-end">
                            <a href="{{ $buttonUrl }}" class="tp-btn tp-btn-2 tp-btn-blue">
                                {!! BaseHelper::clean($buttonLabel) !!}
                                <svg width="17" height="14" viewBox="0 0 17 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M16 6.99976L1 6.99976" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    <path d="M9.9502 0.975414L16.0002 6.99941L9.9502 13.0244" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                </svg>
                            </a>
                            <span class="tp-blog-more-border"></span>
                        </div>
                    </div>
                @endif
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="tp-blog-main-slider">
                    <div class="tp-blog-main-slider-active swiper-container">
                        <div class="swiper-wrapper">
                            @foreach($posts as $post)
                                <div class="tp-blog-item mb-30 swiper-slide">
                                    <div class="tp-blog-thumb p-relative fix">
                                        <a href="{{ $post->url }}">
                                            {{ RvMedia::image($post->image, $post->name) }}
                                        </a>
                                        <div class="tp-blog-meta tp-blog-meta-date">
                                            <span>{{ Theme::formatDate($post->created_at) }}</span>
                                        </div>
                                    </div>
                                    <div class="tp-blog-content">
                                        <h3 class="tp-blog-title text-truncate">
                                            <a href="{{ $post->url }}" title="{{ $post->name }}">
                                                {!! BaseHelper::clean($post->name) !!}
                                            </a>
                                        </h3>

                                        @if($post->firstCategory)
                                            <div class="tp-blog-tag">
                                                <span><x-core::icon name="ti ti-tag" /></span>
                                                <a href="{{ $post->firstCategory->url }}">{{ $post->firstCategory->name }}</a>
                                            </div>
                                        @endif

                                        <p>{{ Str::words($post->description, 20) }}</p>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
