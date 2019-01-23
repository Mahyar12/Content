$(function() {
	
	$('#qcategories').flexdatalist({
     minLength: 0,
     valueProperty: '*',
     selectionRequired: true,
     visibleProperties: ["name"],
     searchIn: 'name',
     url: '/categories.json',
     multiple: true
	});
	$("#add-content").on('click', function(event) {		
		$.ajax({
			url: '/articles.json',
			type: 'POST',
			data: JSON.stringify({article: {status: 1, abstract: $("#abstract").val(), content: $("#content").val()}}),	
			contentType: 'application/json',
            dataType: 'json',
			success: function (response) { 
				console.log(response);
				var data = new FormData();
				console.log($("#image")[0].files[0]);
				data.append('images[]', $("#image")[0].files[0]); 	
				data.append('article_id', response.id);
				$.ajax({
			       url: "/images/upload",
			       type: 'POST',
			       data: data,
			       async: false,
			       cache: false,
			       contentType: false,
			       enctype: 'multipart/form-data',
			       processData: false,
			       success: function (response) {
			         alert(JSON.stringify(response));
			        
			       }
			   	});	
				
			 },
			error: function (r) { console.log(r);},
		});
		
	});
	
	
});