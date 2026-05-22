@php
    use Botble\Shortcode\Facades\Shortcode;

    Theme::asset()->remove('contact-css');
    Theme::asset()->container('footer')->remove('contact-public-js');

    $contactInfo = Shortcode::fields()->getTabsData(['icon', 'content'], $shortcode);
@endphp

<section class="tp-contact-area pb-100">
    <div class="container">
        <div class="tp-contact-inner">
            <div class="row">
                <div class="col-xl-9 col-lg-8">
                    <div class="tp-contact-wrapper">
                        @if ($title = $shortcode->title)
                            <h3 class="tp-contact-title">{{ $title }}</h3>
                        @endif

                        <div class="tp-contact-form">
                            {!! $form->renderForm() !!}
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4">
                    {{-- <div class="tp-contact-info-wrapper">
                        @foreach ($contactInfo as $info)
                            @continue(empty($info['icon']) || empty($info['content']))

                            <div class="tp-contact-info-item">
                                <div class="tp-contact-info-icon">
                                    <span>
                                        {{ RvMedia::image($info['icon'], $info['content']) }}
                                    </span>
                                </div>
                                <div class="tp-contact-info-content">
                                    <p>{!! BaseHelper::clean($info['content']) !!}</p>
                                </div>
                            </div>
                        @endforeach

                        @php
                            $socialInfoLabel = $shortcode->social_info_label;
                        @endphp

                        <div class="tp-contact-info-item">
                            <div class="tp-contact-info-icon">
                                <span>
                                    {{ RvMedia::image($shortcode->social_info_icon, $socialInfoLabel ?: __('Social Media')) }}
                                </span>
                            </div>
                            <div class="tp-contact-info-content">
                                <div class="tp-contact-social-wrapper mt-5">
                                    @if ($socialInfoLabel)
                                        <h4 class="tp-contact-social-title">{{ $socialInfoLabel }}</h4>
                                    @endif

                                    @if ($socialLinks = Theme::getSocialLinks())
                                        <div class="tp-contact-social-icon">
                                            @foreach($socialLinks as $socialLink)
                                                <a href="{{ $socialLink->getUrl() }}">{{ $socialLink->getIconHtml() }}</a>
                                            @endforeach
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div> --}}
                    
                    <div class="tp-contact-info-wrapper">
                        <div class="tp-contact-info-item">
                            <div class="tp-contact-info-icon">
                                <span>
                                    <img src="https://shofy.botble.com/storage/main/contact/icon-1.png" data-bb-lazy="true" class="page_speed_2083839610 entered loaded" loading="lazy" data-src="https://shofy.botble.com/storage/main/contact/icon-1.png" alt="0977936223" data-ll-status="loaded"></span>
                                </div>
                                <div class="tp-contact-info-content">
                                    <p>eurekavn.2023@gmail.com <br>
                                        <strong>097.793.6223</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="tp-contact-info-item">
                                <div class="tp-contact-info-icon">
                                    <span><img src="https://shofy.botble.com/storage/main/contact/icon-2.png" data-bb-lazy="true" class="page_speed_2083839610 entered loaded" loading="lazy" data-src="https://shofy.botble.com/storage/main/contact/icon-2.png" alt=" 15 Nguyễn Huy Tự, Hoàn Kiếm, Hà Nội, Việt Nam." data-ll-status="loaded">
                                    </span>
                                </div>
                                <div class="tp-contact-info-content">
                                        <p> 15 Nguyễn Huy Tự, Hoàn Kiếm, Hà Nội, Việt Nam.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
