<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberInsertForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<div>
	<h2>JSTL 코어(Core)를 활용한 회원 정보 입력</h2>
	<hr />
</div>

<div>
	<form action="MemberInsert.jsp">
	
		<!-- (이름, 전화번호, 주소) * 5명 분 -->
		<!-- -> submit 액션 처리 -->
		<!-- <input type="text" name="name1" class="txt"/>
		<input type="text" name="tel1" class="txt"/>
		<input type="text" name="addr1" class="txt"/> -->
		
		<c:set var="i" value="1"></c:set>
		
		<c:forEach var="a" begin="1" end="5" step="1">
			<div>
			 ${a }번째 이름 <input type="text" name="name${a }" class="txt"/>
			 ${a }번째 이름 <input type="text" name="name${i }" class="txt"/>
			 <c:set var="i" value="i+1"></c:set>
			 
			 ${a }번째 전화번호 <input type="text" name="tel${a }" class="txt"/>
			 ${a }번째 주소 <input type="text" name="addr${a }" class="txt"/>
			</div>
			<br><br>
		</c:forEach>
		
		<button type="submit" class="btn">결과 확인</button>
		
	</form>
</div>

</body>
</html>