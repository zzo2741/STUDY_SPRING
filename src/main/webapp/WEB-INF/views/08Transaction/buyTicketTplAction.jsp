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
		<h2>트랜잭션(Transaction)</h2>

		<h3>트랜잭션템플릿 사용한 구매 결과 보기</h3>

		<span style="color: red; font-size: 1.5em;"> ${successOrFail } </span>
		<ul>
			<li>고객아이디 : ${ticketInfo.customerId }</li>
			<li>티켓구매수 : ${ticketInfo.amount }</li>
		</ul>
		<p>
			<a href="./buyTicketTpl.do"> 티켓구매페이지 바로가기 </a>
		</p>
	</div>

</body>
</html>