$(document).ready( function() {  
	$('div.CDB_TH_NAME').each(function(){
		$(this).css('width', $(this).siblings('img').width()).css('height', $(this).siblings('img').height());
		//$(this).parent().css('width', $(this).siblings('img').width())
	});
	$('div.CDB_NAME').each(function(){
		$(this).css('width', $(this).siblings('img').width());
	});
	$('div.CDB_NAME').each(function(){
		$(this).css('width', $(this).parent().width()-13);
	})
	
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
		$(this).css('background-color', 'purple');
		$(this).css('color', 'white');
	}, function(){
		$(this).css('background-color', 'white');
		$(this).css('color', 'inherit');
	});
	
	$('div.modal-content').css('width', 1054);
});

$(window).resize(function(){
	$('div.CDB_TH_NAME').each(function(){
		$(this).css('width', $(this).siblings('img').width());
	});
	$('div.CDB_NAME').each(function(){
		$(this).css('width', $(this).siblings('img').width());
	});
});
