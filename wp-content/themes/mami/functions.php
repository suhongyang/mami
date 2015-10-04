<?php

add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );
function theme_enqueue_styles() {
    wp_enqueue_style( 'arcade-basic', get_template_directory_uri() . '/style.css' );

}

function bavotasan_excerpt_more( $text ) {
	if ( is_singular() )
		return $text;

	return '<p class="excerpt">' . $text . ' <a href="' . get_permalink( get_the_ID() ) . '">' . __( 'Read more', 'arcade' ) . '</a></p>';
}
