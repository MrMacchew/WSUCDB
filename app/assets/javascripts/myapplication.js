$(window).ready( function() {  
// Code for the tabs
  $(".pagination > li ").on('click', function() {
    $(this).siblings().removeClass("active");
    $(this).addClass("active");
    //alert("Data attribute " + $(this).data('page-number'));
    pageSelect($(this).data('page-number'), 3);
  });

    // Previous Button code
  $('#prev').on('click', function() {
    var current = $('.pagination > .active');
    if (current.prev().length > 0) { 
    current.prev().addClass('active');
    current.removeClass('active');
    pageSelect(current.prev().data('page-number'), 3);
    }
  });


// Next button code
  $('#next').on('click', function() {
    var current = $('.pagination > .active');
    if (current.next().length > 0) { 
    current.next().addClass('active');
    current.removeClass('active');
    pageSelect(current.next().data('page-number'), 3);
    }
  }); 

// Code to set default active tab for the page
  pageSelect(1, 3);
  $(".pagination > li").first().addClass("active");
});

function pageSelect(page, increment)
{
  $('.app').hide();
  for(var j = 0 ; j < increment; j++)
  {
    var k = j + (increment * (page - 1));
    $('#app-id-' + k).show(); 
    //alert("#app-id-" + j + " should be showing");
  }   
}
