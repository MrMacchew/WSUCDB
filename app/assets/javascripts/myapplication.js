$(window).load( function() {  
	$('div.CDB_TH_NAME').each(function(){
		$(this).css('width', $(this).siblings('img').width());
		$(this).parent().css('width', $(this).siblings('img').width());
	});
	
	/*$('div.wrapper').each(function(){
		$(this).css('height', $(this).child('img').height());
	});
	*/
	$('div.wrapper').hover(function(){
		$(this).children('.CDB_TH_NAME').stop().slideToggle('fast');
	}, function(){
		$(this).children('.CDB_TH_NAME').stop().slideToggle('fast');
	});
});

$(window).resize(function(){
	$('div.CDB_TH_NAME').each(function(){
		$(this).css('width', $(this).siblings('img').width());
	});
});
