<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div class='wrapper'>
		<header>
			<h3 style="fontWeight: bolder">KH C CLASS</h3>
		</header>
		<nav>
			<a id='list'>게시판</a> <a id='insert'>등록</a>
		</nav>
		<div class='outer'>
			
		</div>
	</div>
	<script>
		$(function(){
			$("#list").click(function(){
				$.ajax({
					url : "<%=request.getContextPath() %>/board/list",
					method:"get",
					dataType : "html",
					success : function(data){
						//console.log(data);
						$(".outer").html(data);
					},
					error: function(error){
						console.log(error);
					}
				});
			});
		});
	
	</script>
	








</body>
</html>