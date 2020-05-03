// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery/dist/jquery.min
//= require bootstrap/dist/js/bootstrap.min
//= require bootstrap-notify/bootstrap-notify
//= require bootstrap-datepicker/dist/js/bootstrap-datepicker
//= require cocoon
//= require_tree .


$('document').ready(function(){
  side_nav = $('.sidebar-wrapper a')
  for(var i=0; i< side_nav.length; i++){
    if(side_nav[i].href == window.location.href){
      console.log('matched')
      $(side_nav[i]).parent().addClass('active')
    }
  }
})
