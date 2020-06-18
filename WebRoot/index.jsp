<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>预约页面</title>
	<script type="text/javascript">
		function submitdata() {
			if(confirm("是否确认预约")) {
				var form = document.getElementById("form");
				form.submit();
			} 
		}
	</script>
</head>
<body>
	<h2>会议室预约</h2>
	<form action="${pageContext.request.contextPath }/confirm" method="post" id="form">
		<input type="hidden" name="id" value="${people.id }">
		姓名：<input type="text" name="name"> <br/>
		工号：<input type="text" name="number"> <br/>
		会议室:<input type="text" name="meetingroom"><br/>
		预约日期:<input type="text" name="orderdate"><br/>
		会议开始时间：<input type="text" name="starttime"> <br/>
		会议结束时间：<input type="text" name="endtime"> <br/>
		
		
		
		<input type="button" value="确认"  onclick="submitdata();" />
	</form>
</body>
</html>