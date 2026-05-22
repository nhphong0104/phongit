<!-- GT About Section Start -->
    <section class="gt-about-section-4 section-padding fix">
        <div class="container">
            <div class="gt-about-wrapper-4">
                <div class="row g-4 align-items-center">
                    <div class="col-lg-7">
                        <div class="gt-about-content">
                            <div class="gt-section-title mb-0">
                                @if($shortcode->subtitle)
                                <h6 class="wow fadeInUp gt-style-4"> {{ $shortcode->subtitle }} </h6>
                                @endif
                                @if($shortcode->title)
                                <h2 class="wow splt-txt" data-splitting>
                                    {{ $shortcode->title }}
                                </h2>
                                @endif
                                
                            </div>
                            <p class="gt-about-text wow fadeInUp" data-wow-delay=".5s">
                                {{ $shortcode->description }}
                            </p>
                            <ul class="gt-list">
                                @if($shortcode->feature_1)
                                <li class="wow fadeInUp" data-wow-delay=".3s">
                                    <span>01.</span>
                                    <div class="gt-content">
                                        <h4>{{ $shortcode->feature_1 }}</h4>
                                    </div>
                                </li>
                                @endif
                                @if($shortcode->feature_2)
                                <li class="wow fadeInUp" data-wow-delay=".5s">
                                    <span>02.</span>
                                    <div class="gt-content">
                                        <h4>{{ $shortcode->feature_2 }}</h4>
                                    </div>
                                </li>
                                @endif
                                @if($shortcode->feature_3)
                                <li class="wow fadeInUp" data-wow-delay=".8s">
                                    <span>03.</span>
                                    <div class="gt-content">
                                        <h4>{{ $shortcode->feature_3 }}</h4>
                                    </div>
                                </li>
                                @endif
                                @if($shortcode->feature_4)
                                <li class="wow fadeInUp" data-wow-delay=".11s">
                                    <span>04.</span>
                                    <div class="gt-content">
                                        <h4>{{ $shortcode->feature_4 }}</h4>
                                    </div>
                                </li>
                                @endif
                                @if($shortcode->feature_5)
                                <li class="wow fadeInUp" data-wow-delay=".14s">
                                    <span>05.</span>
                                    <div class="gt-content">
                                        <h4>{{ $shortcode->feature_5 }}</h4>
                                    </div>
                                </li>
                                @endif
                            </ul>
                            <div class="gt-about-button wow fadeInUp" data-wow-delay=".5s">
                                @if($shortcode->action_label)
                                 <a href="{{ $shortcode->action_url }}" class="gt-theme-btn style-2">
                                    <span class="gt-text-btn">
                                        <span class="gt-text-2">{{ $shortcode->action_label }}<i class="fa-solid fa-arrow-right"></i></span>
                                    </span>
                                </a>
                                @endif
                               
                                <div class="call-info">
                                    <div class="icon">
                                        <i class="fa-solid fa-phone"></i>
                                    </div>
                                    <h4><a href="tel:{{ theme_option('company_phone') }}">{{ theme_option('company_phone') }}</a></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                       <div class="gt-about-image">
                        @if($shortcode->image_1)
                            <img src="{{ RvMedia::getImageUrl($shortcode->image_1) }}" alt="{{ $shortcode->title }}" class="wow img-custom-anim-right">
                        @endif
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </section>