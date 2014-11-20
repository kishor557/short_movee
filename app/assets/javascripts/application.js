// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap.min
//= require jquery.colorbox-min
//= require_tree .

$(document).on('page:fetch',   function() { NProgress.start(); });
$(document).on('page:change',  function() { NProgress.done(); });
$(document).on('page:restore', function() { NProgress.remove(); });

/*
$(document).ajaxSend(function(event, request, settings) {
  $('#loading-indicator').show();
});

$(document).ajaxComplete(function(event, request, settings) {
  $('#loading-indicator').hide();
});
*/

$(document).ready(function() {

  $(".ytube").colorbox({iframe:true, innerWidth:640, innerHeight:390});

  //$(".new_movie12").colorbox();
  //  $('.carousel').carousel({
  //    interval: 2000
  //  });

  $(".save_movie").click(function() {
    $("#new_movie").validate();
  });

  $(".save_query").click(function() {
    $(".new_query_form").validate();
  });
});
