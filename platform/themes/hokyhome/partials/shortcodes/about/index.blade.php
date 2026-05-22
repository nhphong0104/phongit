<section class="tp-about-area pt-120 pb-120">
    <div class="container">
        <div class="row">
            <div class="col-xl-5 col-lg-6">
                @if($shortcode->image_1 || $shortcode->image_2)
                    <div class="tp-about-thumb-wrapper p-relative mr-35">
                        @if($shortcode->image_1)
                            <div class="tp-about-thumb m-img">
                                {!! RvMedia::image($shortcode->image_1, $shortcode->title) !!}
                            </div>
                        @endif
                        @if($shortcode->image_2)
                            <div class="tp-about-thumb-2">
                                {!! RvMedia::image($shortcode->image_2, $shortcode->title) !!}
                            </div>
                        @endif
                    </div>
                @endif
            </div>
            <div class="col-xl-7 col-lg-6">
                <div class="tp-about-wrapper pl-80 pt-75 pr-60">
                    <div class="tp-section-title-wrapper-4 mb-50">
                        @if($shortcode->subtitle)
                            <span class="tp-section-title-pre-4">{!! BaseHelper::clean($shortcode->subtitle) !!}</span>
                        @endif
                        @if($shortcode->title)
                            <h3 class="section-title tp-section-title-4 fz-50">{!! BaseHelper::clean($shortcode->title) !!}</h3>
                        @endif
                    </div>
                    <div class="tp-about-content pl-120">
                        @if($shortcode->description)
                            <p>{!! BaseHelper::clean($shortcode->description) !!}</p>
                        @endif

                        @if($shortcode->action_label)
                            <div class="tp-about-btn">
                                <a href="{{ $shortcode->action_url }}" class="tp-btn">
                                    {!! BaseHelper::clean($shortcode->action_label) !!}
                                    <svg width="17" height="15" viewBox="0 0 17 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M16 7.49976L1 7.49976" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                        <path d="M9.9502 1.47541L16.0002 7.49941L9.9502 13.5244" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                    </svg>
                                </a>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- GT About Section Start -->
    <section class="gt-about-section-4 section-padding fix">
        <div class="left-shape float-bob-y">
            <img src="assets/img/home-4/about/left-shape.png" alt="img">
        </div>
        <div class="container">
            <div class="gt-about-wrapper-4">
                <div class="row g-4 align-items-center">
                    <div class="col-lg-6">
                        <div class="gt-about-content">
                            <div class="gt-section-title mb-0">
                                <h6 class="wow fadeInUp gt-style-4"> About Us</h6>
                                <h2 class="wow splt-txt" data-splitting>
                                    Empowering a Greener Future
                                </h2>
                            </div>
                            <p class="gt-about-text wow fadeInUp" data-wow-delay=".5s">
                                We specialize in creating customized solar solutions that empower homeowners and businesses to embrace clean, sustainable energy.
                            </p>
                            <ul class="gt-list">
                                <li class="wow fadeInUp" data-wow-delay=".3s">
                                    <span>01.</span>
                                    <div class="gt-content">
                                        <h4>company info,</h4>
                                        <p>We deliver high-performance solar systems for homes and businesses.</p>
                                    </div>
                                </li>
                                <li class="wow fadeInUp" data-wow-delay=".5s">
                                    <span>02.</span>
                                    <div class="gt-content">
                                        <h4>years of experience</h4>
                                        <p>We deliver high-performance solar systems for homes and businesses.</p>
                                    </div>
                                </li>
                            </ul>
                            <div class="gt-about-button wow fadeInUp" data-wow-delay=".5s">
                                <a href="about.html" class="gt-theme-btn style-2">
                                    <span class="gt-text-btn">
                                        <span class="gt-text-2">ABOUT MORE <i class="fa-solid fa-arrow-right"></i></span>
                                    </span>
                                </a>
                                <div class="call-info">
                                    <div class="icon">
                                        <i class="fa-solid fa-phone"></i>
                                    </div>
                                    <h4><a href="tel:+5284567592">+(528) 456-7592</a></h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                       <div class="gt-about-image">
                            <img src="assets/img/home-4/about/about-01.jpg" alt="img" class="wow img-custom-anim-right">
                            <div class="gt-about-image-2 wow img-custom-anim-left">
                                <img src="assets/img/home-4/about/about-02.jpg" alt="img">
                            </div>
                       </div>
                    </div>
                </div>
            </div>
        </div>
    </section>