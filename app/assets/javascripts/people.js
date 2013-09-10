$(document).on('ajax:success', function(event, data, status, xhr){

	console.log(data);
	$('.person').html(data.body)		

});
	
