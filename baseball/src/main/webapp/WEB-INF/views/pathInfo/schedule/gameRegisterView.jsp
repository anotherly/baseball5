
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
	<form action="" align="center">

		<table border="2">

			<tr>
				<td colspan="3">${data.dd.away_img }${data.dd.away }
					${data.dd.away_score } : ${data.dd.home_score } ${data.dd.home }
					${data.dd.home_img }</td>

			</tr>


			<tr>
				<td><c:choose>
						<c:when test="${data.dd4.w eq 1 && data.dd4.sv eq 0 }">
				
				�¸����� : ${data.dd4.playerName }
				
				</c:when>
						<c:when test=" ${data.dd4.w eq 1 && data.dd4.sv eq 1 }">
				
				�¸����� : ${data.dd4.playerName }<br>���̺� : ${data.dd4.sv }
				
				</c:when>

						<c:otherwise>
					�������� : ${data.dd4.playerName }
				</c:otherwise>
					</c:choose></td>


				<td>${data.dd.year }��${data.dd.month }��${data.dd.day }��
					${data.dd.yoil }����<br>${data.dd.stadium }<br>${data.dd.channel }<br>
					${data.dd.status }
				</td>
				<td><c:choose>
						<c:when test="${data.dd5.w eq 1 && data.dd5.sv eq 0 }">
				
				�¸����� : ${data.dd5.playerName }
				
				</c:when>
						<c:when test=" ${data.dd5.w eq 1 && data.dd5.sv eq 1 }">
				
				�¸����� : ${data.dd5.playerName }<br>���̺� : ${data.dd5.sv }
				
				</c:when>

						<c:otherwise>
					�������� : ${data.dd5.playerName }
				</c:otherwise>
					</c:choose></td>
			</tr>
			<tr>
				<td>${data.dd.away }</td>
				<td>${data.dd3.r }:${data.dd2.r }</td>
				<td>${data.dd.home }</td>
			</tr>
			<tr>
				<td>${data.dd3.h }</td>
				<td>��Ÿ</td>
				<td>${data.dd2.h }</td>
			</tr>
			<tr>
				<td>${data.dd3.hr }</td>
				<td>Ȩ��</td>
				<td>${data.dd2.hr }</td>
			</tr>
			<tr>
				<td>${data.dd3.sb }</td>
				<td>����</td>
				<td>${data.dd2.sb }</td>
			</tr>
			<tr>
				<td>${data.dd3.so }</td>
				<td>����</td>
				<td>${data.dd2.so }</td>
			</tr>
			<tr>
				<td>${data.dd3.dp }</td>
				<td>����</td>
				<td>${data.dd2.dp }</td>
			</tr>
			<tr>
				<td>${data.dd3.e }</td>
				<td>��å</td>
				<td>${data.dd2.e }</td>
			</tr>

		</table>
	</form>


</body>
</html>