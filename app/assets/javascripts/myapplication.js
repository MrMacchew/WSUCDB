$(function() {  

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

/*	$('#Filters').click(function(){
		if ($('#CDB_FILTER').hasClass('showFilter'))
		{
			$('#CDB_FILTER').animate({left: '-210px'}, { queue: false});
			$('#filterTag').animate({left: '0px'}, { queue: false});
			//$('#filterTag').html("<a id='Filters' href='#'>Filters <span class='glyphicon glyphicon-filter'></span></a>");
			$('#CDB_FILTER').removeClass('showFilter');
		}
		else {
			$('#filterTag').animate({left: '200px'}, { queue: false});
			//$('#filterTag').html("<a id='Filters' href='#'>Hide <span class='glyphicon glyphicon-filter'></span></a>");
			$('#CDB_FILTER').animate({left: '0px'}, { queue: false});
			$('#CDB_FILTER').addClass('showFilter');
		}
	});
	*/
	$('#clearFilters').click(function(event){
		event.preventDefault();
		//Clear out all filter settings back to default.
		$('#classroom_search').find('input:checkbox').removeAttr('checked');
		$('#classroom_search').find('select').val('');
		$('#classroom_search').find('input[type=number]').val('');
	});
});
	



