<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script>
	$(function() {

	});
</script>
</head>
<body>
	<div class="container">
		<h2>어노테이션을 이용한 외부파일 읽어오기</h2>
		<h3>게시판 설정값 읽어오기</h3>
		<ul>
			<li>ID : ${id }</li>
			<li>Password : ${pass }</li>
			<li>Driver : ${driver }</li>
			<li>ConnectionURL  : ${url }</li>
		</ul>
	</div>
</body>
</html>