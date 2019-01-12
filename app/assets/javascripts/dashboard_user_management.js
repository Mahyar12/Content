$(function() {

	var $users_table = $('#users');

	$.ajax({
		url: '/users.json',
		type: 'GET',	
		success: function (response) { 
			$users_table.bootstrapTable("load", response);			
		 },
		error: function () { },
	});
})
