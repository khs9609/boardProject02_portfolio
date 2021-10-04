<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우편번호 주소 선택</title>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<style>
.result {
	text-align : center;
}
.result select {
	height : 30px;
}
.result button {
	padding : 0 10px;
	margin-top : 10px;
	letter-spacing : .2rem;
	width : 150px;
	height : 30px;
    background-color: #000;
    color : #fff;
}
</style>
<script>
	$(function(){
		$("#bt_send").click(function(){
			var addr = $("#address").val();
			var addr_array = addr.split(" ");
			var zipcode = addr_array[0].substring(1, addr_array[0].length-1);
			var address = addr.replace(addr_array[0], "");
			address = $.trim(address);
			
			opener.document.frm.zipcode.value = zipcode;
			opener.document.frm.address.value = address;
			
			self.close();
		});
	});
</script>

<body>
<br><br><br>

<div class="result" style="width:100%,text-align:center;">


<select name="address" id="address">
	<c:forEach var="list" items="${list}">
		<option value="${list.addr }">${list.addr}</option>
	</c:forEach>
</select>

<br>

<button type="button" id="bt_send">적용하기</button>

</div>

</body>
</html>