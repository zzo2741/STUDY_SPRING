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
		<h2>파일업로드 폼</h2>
		<form name="fileFrm" method="post" action="uploadAction.do" enctype="multipart/form-data">

			<table class="table table-bordered" style="width: 500px;">
				<colgroup>
					<col width="20%" />
					<col width="*" />
				</colgroup>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="title" value="제목입니다." />
					</td>
				</tr>
				<tr>
					<th>첨부파일1</th>
					<td>
						<input type="file" name="userfile1" />
					</td>
				</tr>
				<tr>
					<th>첨부파일2</th>
					<td>
						<input type="file" name="userfile2" />
					</td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;">
						<button type="submit" class="btn btn-danger">파일업로드</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>