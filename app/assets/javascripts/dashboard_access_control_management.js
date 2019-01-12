var $roles_table = $('#roles');
var $models_table = $('#models');
var $accesses_table = $('#accesses');

roles = [];
models = [];
model_names = [];	

function accessFormatter(value, row, index) {

	return [
        '<div class="row">',
        '<div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">',
        '<center><p><h4>دسترسی خواندن</h4></p><p>',
        '<a class="read-self ' + ((row.access%10 == 1)?"active":"") + '" href="javascript:void(0)" title="Sign">خودش </a>',
        '<a class="read-users ' + ((row.access%10 == 2)?"active":"") + '" href="javascript:void(0)" title="Sign">کاربرانش </a>',
        '<a class="read-all ' + ((row.access%10 == 3)?"active":"") + '" href="javascript:void(0)" title="Sign">همه </a>',
        '</p>',
        '</center></div>',
        '<div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 horizontal-line">',
        '<center><p><h4>دسترسی ایجاد</h4></p><p>',
        '<a class="create-self ' + ((Math.floor(row.access/10)%10 == 1)?"active":"") + '" href="javascript:void(0)" title="Sign">خودش </a>',
        '<a class="create-users ' + ((Math.floor(row.access/10)%10 == 2)?"active":"") + '" href="javascript:void(0)" title="Sign">کاربرانش </a>',
        '<a class="create-all ' + ((Math.floor(row.access/10)%10 == 3)?"active":"") + '" href="javascript:void(0)" title="Sign">همه </a>',
        '</p>',
        '</center></div>',
        '<div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 horizontal-line">',
        '<center><p><h4>دسترسی اصلاح</h4></p><p>',
        '<a class="edit-self ' + ((Math.floor(row.access/100)%10 == 1)?"active":"") + '" href="javascript:void(0)" title="Sign">خودش </a>',
        '<a class="edit-users ' + ((Math.floor(row.access/100)%10 == 2)?"active":"") + '" href="javascript:void(0)" title="Sign">کاربرانش </a>',
        '<a class="edit-all ' + ((Math.floor(row.access/100)%10 == 3)?"active":"") + '" href="javascript:void(0)" title="Sign">همه </a>',
        '</p>',
        '</center></div>',
        '<div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12 horizontal-line">',
        '<center><p><h4>دسترسی حذف</h4></p><p>',
        '<a class="delete-self ' + ((Math.floor(row.access/1000)%10 == 1)?"active":"") + '" href="javascript:void(0)" title="Sign">خودش </a>',
        '<a class="delete-users ' + ((Math.floor(row.access/1000)%10 == 2)?"active":"") + '" href="javascript:void(0)" title="Sign">کاربرانش </a>',
        '<a class="delete-all ' + ((Math.floor(row.access/1000)%10 == 3)?"active":"") + '" href="javascript:void(0)" title="Sign">همه </a>',
        '</p>',
        '</center></div>',
        '</div> ',
	].join('');
}

window.accessEvents = {
    'click .read-self': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: Math.floor(row.access/10)*10+1}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .read-users': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: Math.floor(row.access/10)*10+2}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .read-all': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: Math.floor(row.access/10)*10+3}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .create-self': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: (Math.floor(row.access/100)*10+1)*10+row.access%10}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .create-users': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: (Math.floor(row.access/100)*10+2)*10+row.access%10}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .create-all': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: (Math.floor(row.access/100)*10+3)*10+row.access%10}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .edit-self': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: (Math.floor(row.access/1000)*10+1)*100+row.access%100}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .edit-users': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: (Math.floor(row.access/1000)*10+2)*100+row.access%100}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .edit-all': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: (Math.floor(row.access/1000)*10+3)*100+row.access%100}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .delete-self': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: row.access%1000 + 1000}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .delete-users': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: row.access%1000 + 2000}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
    'click .delete-all': function (e, value, row, index) {
        r = {index: index, row: {name: row.name, access: row.access%1000 + 3000}};
        models[index] = r;
        $accesses_table.bootstrapTable("updateRow", r);
    },
};


$(function() {

	$.ajax({
		url: '/roles.json',
		type: 'GET',	
		success: function (response) { 
			roles = response;
			$roles_table.bootstrapTable("load", response);			
		 },
		error: function () { },
	});

	$.ajax({
		url: '/models.json',
		type: 'GET',	
		success: function (response) {
			// models = response; 
			for(var k in response){
				model_names.push({name: k});			
			}
			$models_table.bootstrapTable("load", model_names);
			models = [{name: "test", access: 3212}];
			$accesses_table.bootstrapTable("load", models);	

		 },
		error: function () { },
	});
})


// $("#roles_table thead tr").append("<th> salam </th>");
