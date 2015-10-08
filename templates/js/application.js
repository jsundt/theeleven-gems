// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require theeleven-boilerplate/svg4everybody
//= require theeleven-boilerplate/jquery.scrollTo.min
//= require_tree ./core/

svg4everybody({
  fallback: function (src, svg, use) {
    return 'fallback.png'; // always return fallback.png
  },
  nosvg: false, // shiv <svg> and <use> elements and use image fallbacks (requires legacy version of svg4everybody)
  polyfill: true // polyfill <use> elements for External Content
});

$(document).on('ready', function() {



}); //ready function
