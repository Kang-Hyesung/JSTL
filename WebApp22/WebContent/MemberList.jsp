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
<title>MemberList.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

div{
    width: 60%;
    margin: 0 auto; /* 수평 중앙 정렬 */
    
    background-color: #F5F5F5;
    padding: 20px;
    padding-left: -50px;
    padding-right: -50px;
    border: 1px solid #CCCCCC;
    text-align: center;
}

span{
	font-weight: bold;
}
.abce{
	margin-top: 150px;
}
</style>
</head>
<body>

<div>
	<h1>JSTL 코어(Core) 문제 해결</h1>
	<h2>회원명단출력</h2>
</div>

<div>
	<!-- 5명의 이름, 전화번호, 주소 출력 -->
	<c:forEach var="dto" items="${lists }">
		<div>
			이름 : ${dto.name } &nbsp;&nbsp; 전화번호 : ${dto.tel }   &nbsp;&nbsp;  주소 : ${dto.addr }
		</div>
	</c:forEach>
	
	
</div>

</body>
</html>