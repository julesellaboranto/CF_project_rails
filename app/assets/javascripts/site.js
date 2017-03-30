$('.alert').delay(2000).fadeOut(3000);
//comment section
$(document).on('turbolinks:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
$(document).on('turbolinks:load ajaxSuccess', function() {
// zoom plugin	
$('.img-zoom').elevateZoom();
});
  });

  


