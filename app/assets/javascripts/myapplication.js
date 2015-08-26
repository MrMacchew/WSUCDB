$(function() {  
	/*$('div.CDB_TH_NAME').each(function(){
		//$(this).css('width', $(this).siblings('img').width()).css('height', $(this).siblings('img').height());
		//$(this).parent().css('width', $(this).siblings('img').width())
	});*/
	$('div.CDB_NAME').each(function(){
		$(this).css('width', $(this).siblings('img').width());
	});
	/*$('div.CDB_NAME').each(function(){
		$(this).css('width', $(this).parent().width()-13);
	})*/
	
	/*$('div.wrapper').each(function(){
		$(this).css('height', $(this).child('img').height());
	});
	*/
	$('div.wrapper').hover(function(){
		$(this).children('.CDB_TH_NAME').stop().fadeIn('fast');
	}, function(){
		$(this).children('.CDB_TH_NAME').stop().fadeOut('fast');
	});
	
	$('div.CDB_NEW').hover(function(){
		$(this).css('background-color', '#492365');
		$(this).css('color', 'white');
	}, function(){
		$(this).css('background-color', 'white');
		$(this).css('color', 'inherit');
	});
	
	if ($('div.CDB_ADMIN').length)
	{
		$('.wrapper').css('margin-bottom', 150);
	}

	$('#Filters').click(function(){
	if ($('#CDB_FILTER').hasClass('showFilter'))
	{
		$('#CDB_FILTER').animate({left: '-210px'});
		$('#CDB_FILTER').removeClass('showFilter');
	}
	else {
		$('#CDB_FILTER').animate({left: '0px'});
		$('#CDB_FILTER').addClass('showFilter');
	}

	if(top.location.pathname === '/' || top.location.pathname === '/classrooms')
	{
		$('#filterTag').show();
	}
	else
	{
		$('#filterTag').hide();
	}
	
	$('#clearFilters').click(function(){
		//Clear out all filter settings back to default.
		$('#classroom_search').find('input:checkbox').removeAttr('checked');
		$('#classroom_search').find('select').val('');
	});
});
	
});

$(window).resize(function(){
	$('div.CDB_TH_NAME').each(function(){
		$(this).css('width', $(this).siblings('img').width());
	});
	$('div.CDB_NAME').each(function(){
		$(this).css('width', $(this).siblings('img').width());
	});
});


