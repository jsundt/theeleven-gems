// Application Core is added to the head of the layout file.
// To make sure jquery is loaded before the views.
// Slows down the app a tiny bit, but useful for inline scripts.
// But runs modernizr and svg4everybody as soon as possible.
//
//= require jquery2
//= require jquery_ujs
//= require theeleven-boilerplate/modernizr__custom
//= require theeleven-boilerplate/svg4everybody


svg4everybody({
  fallback: function (src, svg, use) {
    return 'fallback.png'; // always return fallback.png
  },
  nosvg: false, // shiv <svg> and <use> elements and use image fallbacks (requires legacy version of svg4everybody)
  polyfill: true // polyfill <use> elements for External Content
});
