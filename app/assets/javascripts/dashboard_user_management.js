var $users_table = $('#users');
$(function() {

	

	$.ajax({
		url: '/users.json',
		type: 'GET',	
		success: function (response) { 
			console.log(response);
			$users_table.bootstrapTable("load", response);			
		 },
		error: function () { },
	});
});
