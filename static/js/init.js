$(document).ready(function() {
  $('.below-fold').hide();
  $('.below-fold').after('<button type="button" class="btn btn-link show-below-fold">Show All <i class="fa fa-caret-down"></i></button>');
  
  $( ".show-below-fold" ).live("click", function() {
    $(this).prev('.below-fold').show();
    $(this).replaceWith('<button type="button" class="btn btn-link hide-below-fold">Hide All <i class="fa fa-caret-up"></i></button>')
  });
  
  $( ".hide-below-fold" ).live("click", function() {
    $(this).prev('.below-fold').hide();
    $(this).replaceWith('<button type="button" class="btn btn-link show-below-fold">Show All <i class="fa fa-caret-down"></i></button>')
  });
});

