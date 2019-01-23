function accessFormatter(value, row, index) {

	return [
        '<div class="row">',
        '<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">',
        '<center><p>',
        '<a class="read-all" href="javascript:void(0)" title="Sign">همه </a>',
        '</p></center></div>',
        '</div>',
	].join('');
}

window.accessEvents = {
	
};
$(function() {
	var $contents_table = $('#my-contents');	
	$.ajax({
		url: '/articles.json',
		type: 'GET',	
		success: function (response) {
			// models = response; 
			console.log(response);
			$contents_table.bootstrapTable("load", response);
		 },
		error: function () { },
	});
	
});