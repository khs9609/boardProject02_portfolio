<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편번호 검색</title>
</head>
<style>
p {
	text-align : center;
}
.serach {
	text-align : center;
}
.serach input[type="text"] {
	width : 60%;
	height : 30px;
	border-radius : 3px solid black;
	background: #EAEAEA;
}
.serach button {
	padding : 0 10px;
	height : 30px;
    background-color: #000;
    color : #fff;
}

</style>
<body>
<form name="frm" method="post" action="post2.do">
<div class="serach">
		<br><br>
		<p><b>우편번호 검색</b></p>
		<input type="text" name="dong">
		<button type="submit">검색하기</button>
</div>
</form>

<!-- <table>
	<tr>
		<th>동 입력</th>
		<td><input type="text" name="dong"></td>
		<td><button type="submit">검색</button></td>
	</tr>
</table> -->
</body>
</html>