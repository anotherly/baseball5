<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<br>
	<table border="1">
		<tr>
			<td></td>
			<td>보낸 사람</td>
			<td>보낸 날짜</td>
			<td>제목</td>
			<td>내용</td>
		</tr>
		<c:forEach items="${data.dd}" var="mail" varStatus="no">
			<tr>
				<td>${no.index+1 }</td>
				<%-- <td><a href="detail?userid=${mail.userid }">${mail.userid }</a></td> --%>
				<td>${mail.userid }</td>
				<td>${mail.maildate }</td>
				<td>${mail.title }</td>
				<td>${mail.content }</td>
			</tr>
		</c:forEach>

	</table>
	<br>
</body>
</html>