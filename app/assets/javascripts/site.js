$(document).on('turbolinks:load', function(){
  $('.alert').delay(2000).fadeOut(3000);
  $('.rating').raty( {path: '/assets'});
})



/*function hideAlert() {
    $("#message").addClass("out");
}

window.setTimeout(function () {
    hideAlert();
}, 1000);*/