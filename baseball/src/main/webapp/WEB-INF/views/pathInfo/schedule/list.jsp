<%-- <%@page import="baseball.schedule.Schedule"%> --%>
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
	<form action="list" method="post">
		<table border="">
			<tr>
				<td colspan="2">
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
				<td colspan="8" align="center">2018시즌 경기일정</td>
			</tr>
			<tr>

				<td>NO</td>
				<td>년</td>
				<td>월</td>
				<td>일</td>
				<td>요일</td>
				<td>결과</td>
				<td>구장</td>
				<td>시간</td>
				<td>중계방송사</td>
				<td>비고</td>
				<%-- <c:forEach items="${data.dd3 }" var="vo">
				<td>오면되는데${vo.w }</td>
				</c:forEach> --%>
				
				
			</tr>
			<c:set var="tic" value="${ticketOk}" />
			<c:forEach items="${data.dd }" var="vo">
				<tr>

					<td>${vo.game_num}
					<input type="hidden">
					</td>
					<td>${vo.year}</td>
					<td>${vo.month}</td>
					<td>${vo.day}</td>
					<td>${vo.yoil}</td>
					<%-- ${vo.away_img} --%>
					<td>${vo.away}${vo.away_r}:${vo.home_r}${vo.home}</td>
					<%-- ${vo.home_img} --%>
					<td>${vo.stadium}</td>
					<td>${vo.game_time}</td>
					<td>${vo.channel}</td>

					<c:choose>

						<c:when test="${tic[0] eq vo.day}">
							<td><a
								href="../../../test/list?home=${vo.home }&away=${vo.away }&year=${vo.year }&month=${vo.month }&day=${vo.day }&game_time=${vo.game_time }">예매중</a></td>
						</c:when>
						<c:when test="${tic[0]+1 eq vo.day}">
							<td><a
								href="../../../test/list?home=${vo.home }&away=${vo.away }&year=${vo.year }&month=${vo.month }&day=${vo.day }&game_time=${vo.game_time }">예매중</a></td>
						</c:when>
						<c:when test="${tic[0]+2 eq vo.day}">
							<td><a
								href="../../../test/list?home=${vo.home }&away=${vo.away }&year=${vo.year }&month=${vo.month }&day=${vo.day }&game_time=${vo.game_time }">예매중</a></td>
						</c:when>
						<c:when test="${tic[0] ge vo.day}">
							<td><a
								href="gameRegisterDetail2?game_num=${vo.game_num}&home=${vo.home }&away=${vo.away }">경기결과</a></td>
						</c:when>
						<c:otherwise>
							<td><a
								href="gameRegisterDetail2?game_num=${vo.game_num}&home=${vo.home }&away=${vo.away }">경기정보</a></td>
						</c:otherwise>
					</c:choose>

				</tr>
				<tr>

				</tr>
			</c:forEach>

		</table>
	</form>
</body>
</html>