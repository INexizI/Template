$(window).on('turbolinks:load', function preloader() {
  setTimeout(function(){
      $('#cssload').addClass('done')
  }, 1000)
});
