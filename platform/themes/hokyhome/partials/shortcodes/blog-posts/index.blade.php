@if($shortcode->view_type == 'blog-posts')
    {!! Theme::partial('shortcodes.blog-posts.blog-posts', compact('shortcode')) !!}
@elseif($shortcode->view_type == 'recent-posts')    
    {!! Theme::partial('shortcodes.blog-posts.recent-posts', compact('shortcode')) !!}
@elseif($shortcode->view_type == 'recent-posts')    
    {!! Theme::partial('shortcodes.blog-posts.recent-posts', compact('shortcode')) !!}
@endif