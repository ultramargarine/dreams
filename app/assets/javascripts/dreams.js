$(function(){
  $('.js-toggle-btn').on('click', function() {
    $(this).prev().toggle('slow');
  });
});