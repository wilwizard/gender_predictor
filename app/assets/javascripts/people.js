$(document).on('ajax:success', function(event, data, status, xhr){
	$('.person').html(data.body)		
});
	
