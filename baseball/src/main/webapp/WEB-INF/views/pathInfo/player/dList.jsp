<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="dList" method="post">
		<table border="">
			<tr>
				<td colspan="5">
					<select name="year">
						<option value="2018">2018</option>
						<option value="2017">2017</option>
						<option value="2016">2016</option>
					</select>
					<select name="month">
						<option value="1" selected="selected">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						
				</select> <input type="submit" value="검색"></td>
				<td colspan="9" align="center">시즌별 수비기록</td>
			</tr>
			
			
	
		<tr>
			<td>년</td>
			<td>월</td>
			<td>팀</td>
			<td>선수이름</td>
			<td>경기</td>
			<td>선발</td>
			<td>이닝</td>
			<td>총수비기회</td>
			<td>자살</td>
			<td>보살</td>
			<td>실책</td>
			<td>병살</td>
			<td>수비율</td>
			<td>최종수정시간</td>
			<td>상세보기</td>
		</tr>

		 <c:forEach items="${data.dd }" var="vo">
			<tr>

				<td>${vo.year}</td>
				<td>${vo.month}</td>
				<td>${vo.teamId}</td>
				<td>${vo.playerName}</td>
				<td>${vo.g}</td>
				<td>${vo.gs}</td>
				<td>${vo.inn}</td>
				<td>${vo.tc}</td>
				<td>${vo.po}</td>
				<td>${vo.a}</td>
				<td>${vo.e}</td>
				<td>${vo.dp}</td>
				<td>${vo.fpct}</td>
				<td>${vo.regDate}</td>
				<td><a href="view?playerId=${vo.playerId}">${vo.playerName}</a></td> 
			
			</tr>
		</c:forEach>

	</table>

</body>
</html>