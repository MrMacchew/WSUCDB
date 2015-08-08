$(window).load( function() {  
	$('div.CDB_TH_NAME').each(function(){
					$(this).css('width', $(this).siblings('img').width());
	});
});
