function error_404(){
	var param = {
			name:$("#name").val(),
			surname:$("#surname").val(),
			tcno:$("#tcno").val(),
			birthday:$("#birthday").val(),
			address:$("#address").val(),
			phone:$("#phone").val(),
			email:$("#email").val(),
			question1:$("#question1").val(),
			question2:$("#question2").val(),
			question3:$("#question3").val(),
			amount:$("#amount").val(),
			addition:$("#addition").val()
			
		
	}
	var ser_data = JSON.stringify(param);
	$ajax({
		type:"POST",
		contentType: "application/json; charset=UTF-8",
		url:"error_404",
		data: ser_data,
		success:function(data){
			alert(data);
			
		},error:function(data){
			alert(data);		
		}
	});
}