<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>empClient.jsp</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	<div id="divlist">
	</div>
	
	<script>
		$.ajax({
			url: 'req',
			method: 'POST', // default 'GET'
			async: false,
			data: JSON.stringify({first_name: "gilddong", last_name: "kim"}),
			contentType: "json", //보내는 파라미터가 json String
			dataType: "json",
			success: function(result) {
				console.log('결과는');
				console.log(result);
			}
		})
		console.log('요청');
		
	</script>
</body>
</html>