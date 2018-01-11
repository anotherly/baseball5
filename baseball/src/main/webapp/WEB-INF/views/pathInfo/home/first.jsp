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
	<tr align="right">
		<!-- 경기결과↓↓↓↓↓ -->
		<td colspan="2">
			<table width=100% height=90 border=1 cellspacing=0>
				<tr>

					<td colspan="2" align="center">경기결과</td>
				</tr>

				<tr>
					<c:set var="tic" value="${ticketOk}" />
					<c:set var="tic2" value="${data.dd4}" />
					<!-- 날짜 -->
					<td colspan="2">${data.home9[0].year }/${data.home9[0].month }/${tic[1]}</td>
				</tr>


				<c:forEach items="${data.home9 }" var="vo">


					<c:choose>
						<c:when test="${tic[0] eq vo.day}">
							<tr>

								<td>${vo.away}<%-- ${data.dd3.r}:${data.dd2.r} --%>${vo.home}</td>
							<tr>

								<td>${vo.stadium}</td>
							</tr>
							<td><a
								href="../../../pathInfo/schedule/gameRegisterDetail2?game_num=${vo.game_num}&home=${vo.home }&away=${vo.away }">경기결과</a></td>
							</tr>
						</c:when>

					</c:choose>

					

				</c:forEach>

			</table>
		</td>

		<!-- 다음경기↓↓↓↓↓ -->

		<td>
			<table width=100% height=100% border=1 cellspacing=0>
				<tr>

					<td colspan="3" align="center">다음 경기</td>
				</tr>

				<c:set var="tic" value="${ticketOk}" />
				<c:forEach items="${data.home9 }" var="vo">
					<tr>
						<c:choose>

							<c:when test="${tic[0] eq vo.day}">
								<tr>
									<!-- 날짜 -->
									<td colspan="3" align="center">${vo.month}월${vo.day}일
										${vo.yoil}요일</td>
								</tr>
								<tr>
									<td colspan="3" align="center">${vo.channel}</td>
								</tr>
								<tr>
									<td colspan="1" align="center">★사진★${vo.away}
										${vo.away_score}</td>
									<td colspan="1" align="center"><a
										href="../../../test/list?home=${vo.home }&away=${vo.away }&year=${vo.year }&month=${vo.month }&day=${vo.day }&game_time=${vo.game_time }">예매중</a></td>
									<td colspan="1" align="center">${vo.home_score}${vo.home}★사진★</td>
								</tr>
								<tr>
									<td colspan="1"></td>
									<td colspan="1" align="center">${vo.stadium}<br>${vo.game_time}</td>
									<td colspan="1"></td>
								</tr>
								
							</c:when>

							<c:when test="${tic[0]+1 eq vo.day}">
								<tr>
									<!-- 날짜 -->
									<td colspan="3" align="center">${vo.month}월${vo.day}일
										${vo.yoil}요일</td>
								</tr>
								<tr>
									<td colspan="3" align="center">${vo.channel}</td>
								</tr>
								<tr>
									<td colspan="1" align="center">★사진★${vo.away}
										${vo.away_score}</td>
									<td colspan="1" align="center"><a
										href="../../../test/list?home=${vo.home }&away=${vo.away }&year=${vo.year }&month=${vo.month }&day=${vo.day }&game_time=${vo.game_time }">예매중</a></td>
									<td colspan="1" align="center">${vo.home_score}${vo.home}★사진★</td>
								</tr>
								<tr>
									<td colspan="1"></td>
									<td colspan="1" align="center">${vo.stadium}<br>${vo.game_time}</td>
									<td colspan="1"></td>
								</tr>
								
							</c:when>

							<c:when test="${tic[0]+2 eq vo.day}">
								<tr>
									<!-- 날짜 -->
									<td colspan="3" align="center">${vo.month}월${vo.day}일
										${vo.yoil}요일</td>
								</tr>
								<tr>
									<td colspan="3" align="center">${vo.channel}</td>
								</tr>
								<tr>
									<td colspan="1" align="center">★사진★${vo.away}
										${vo.away_score}</td>
									<td colspan="1" align="center"><a
										href="../../../test/list?home=${vo.home }&away=${vo.away }&year=${vo.year }&month=${vo.month }&day=${vo.day }&game_time=${vo.game_time }">예매중</a></td>
									<td colspan="1" align="center">${vo.home_score}${vo.home}★사진★</td>
								</tr>
								<tr>
									<td colspan="1"></td>
									<td colspan="1" align="center">${vo.stadium}<br>${vo.game_time}</td>
									<td colspan="1"></td>
								</tr>
								
							</c:when>

						</c:choose>

					</tr>

				</c:forEach>

			</table>
		</td>
	</tr>


	<!-- 타자top3↓↓↓↓↓ -->

	<tr>
		<td align="right">
			<table width=200 height=90 border=1 cellspacing=0>
				<tr>
					<td colspan="2">타자 TOP3</td>
				</tr>

				<tr>
					<td colspan="2">타율</td>
				</tr>
				<c:forEach items="${data.home2 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.avg }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">홈런</td>
				</tr>
				<c:forEach items="${data.home4 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.hr }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">타점</td>
				</tr>
				<c:forEach items="${data.home6 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.rbi }</td>
					</tr>

				</c:forEach>

			</table>
		</td>

		<!-- 투수top3↓↓↓↓↓ -->

		<td align="center">
			<table width=200 height=90 border=1 cellspacing=0>
				<tr>
					<td colspan="2">투수 TOP3</td>
				</tr>

				<tr>
					<td colspan="2">평균자책점</td>
				</tr>
				<c:forEach items="${data.home3 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.era }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">승리</td>
				</tr>
				<c:forEach items="${data.home7 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.w }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">탈삼진</td>
				</tr>
				<c:forEach items="${data.home5 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.pitcherSo }</td>
					</tr>

				</c:forEach>

			</table>
		</td>

		<!-- 팀순위↓↓↓↓↓ -->

		<td align="left">
			<table width=150 height=90 border=1 cellspacing=0>
				<tr>
					<td colspan="7">TEAM RANKING</td>
				</tr>
				<tr>

					<td>순위</td>
					<td>팀</td>
					<td>경기</td>
					<td>승</td>
					<td>패</td>
					<!-- <td>무</td> -->
					<td>승률</td>
					<td>게임차</td>

				</tr>
				<c:forEach items="${data.home8 }" var="vo" varStatus="no">
					<tr>
						<td>${no.count }</td>
						<td>${vo.teamName }</td>
						<td>${vo.g }</td>
						<td>${vo.w }</td>
						<td>${vo.l }</td>
						<td>${vo.winPer }</td>
						<td>${vo.cha }</td>
					</tr>



				</c:forEach>

			</table>
		</td>
	</tr>




</body>
</html>