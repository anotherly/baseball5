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
		<!-- ����������� -->
		<td colspan="2">
			<table width=100% height=90 border=1 cellspacing=0>
				<tr>

					<td colspan="2" align="center">�����</td>
				</tr>

				<tr>
					<c:set var="tic" value="${ticketOk}" />
					<c:set var="tic2" value="${data.dd4}" />
					<!-- ��¥ -->
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
								href="../../../pathInfo/schedule/gameRegisterDetail2?game_num=${vo.game_num}&home=${vo.home }&away=${vo.away }">�����</a></td>
							</tr>
						</c:when>

					</c:choose>

					

				</c:forEach>

			</table>
		</td>

		<!-- ������������ -->

		<td>
			<table width=100% height=100% border=1 cellspacing=0>
				<tr>

					<td colspan="3" align="center">���� ���</td>
				</tr>

				<c:set var="tic" value="${ticketOk}" />
				<c:forEach items="${data.home9 }" var="vo">
					<tr>
						<c:choose>

							<c:when test="${tic[0] eq vo.day}">
								<tr>
									<!-- ��¥ -->
									<td colspan="3" align="center">${vo.month}��${vo.day}��
										${vo.yoil}����</td>
								</tr>
								<tr>
									<td colspan="3" align="center">${vo.channel}</td>
								</tr>
								<tr>
									<td colspan="1" align="center">�ڻ�����${vo.away}
										${vo.away_score}</td>
									<td colspan="1" align="center"><a
										href="../../../test/list?home=${vo.home }&away=${vo.away }&year=${vo.year }&month=${vo.month }&day=${vo.day }&game_time=${vo.game_time }">������</a></td>
									<td colspan="1" align="center">${vo.home_score}${vo.home}�ڻ�����</td>
								</tr>
								<tr>
									<td colspan="1"></td>
									<td colspan="1" align="center">${vo.stadium}<br>${vo.game_time}</td>
									<td colspan="1"></td>
								</tr>
								
							</c:when>

							<c:when test="${tic[0]+1 eq vo.day}">
								<tr>
									<!-- ��¥ -->
									<td colspan="3" align="center">${vo.month}��${vo.day}��
										${vo.yoil}����</td>
								</tr>
								<tr>
									<td colspan="3" align="center">${vo.channel}</td>
								</tr>
								<tr>
									<td colspan="1" align="center">�ڻ�����${vo.away}
										${vo.away_score}</td>
									<td colspan="1" align="center"><a
										href="../../../test/list?home=${vo.home }&away=${vo.away }&year=${vo.year }&month=${vo.month }&day=${vo.day }&game_time=${vo.game_time }">������</a></td>
									<td colspan="1" align="center">${vo.home_score}${vo.home}�ڻ�����</td>
								</tr>
								<tr>
									<td colspan="1"></td>
									<td colspan="1" align="center">${vo.stadium}<br>${vo.game_time}</td>
									<td colspan="1"></td>
								</tr>
								
							</c:when>

							<c:when test="${tic[0]+2 eq vo.day}">
								<tr>
									<!-- ��¥ -->
									<td colspan="3" align="center">${vo.month}��${vo.day}��
										${vo.yoil}����</td>
								</tr>
								<tr>
									<td colspan="3" align="center">${vo.channel}</td>
								</tr>
								<tr>
									<td colspan="1" align="center">�ڻ�����${vo.away}
										${vo.away_score}</td>
									<td colspan="1" align="center"><a
										href="../../../test/list?home=${vo.home }&away=${vo.away }&year=${vo.year }&month=${vo.month }&day=${vo.day }&game_time=${vo.game_time }">������</a></td>
									<td colspan="1" align="center">${vo.home_score}${vo.home}�ڻ�����</td>
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


	<!-- Ÿ��top3������ -->

	<tr>
		<td align="right">
			<table width=200 height=90 border=1 cellspacing=0>
				<tr>
					<td colspan="2">Ÿ�� TOP3</td>
				</tr>

				<tr>
					<td colspan="2">Ÿ��</td>
				</tr>
				<c:forEach items="${data.home2 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.avg }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">Ȩ��</td>
				</tr>
				<c:forEach items="${data.home4 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.hr }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">Ÿ��</td>
				</tr>
				<c:forEach items="${data.home6 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.rbi }</td>
					</tr>

				</c:forEach>

			</table>
		</td>

		<!-- ����top3������ -->

		<td align="center">
			<table width=200 height=90 border=1 cellspacing=0>
				<tr>
					<td colspan="2">���� TOP3</td>
				</tr>

				<tr>
					<td colspan="2">�����å��</td>
				</tr>
				<c:forEach items="${data.home3 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.era }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">�¸�</td>
				</tr>
				<c:forEach items="${data.home7 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.w }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="2">Ż����</td>
				</tr>
				<c:forEach items="${data.home5 }" var="vo" varStatus="no">
					<tr>
						<td>${vo.playerName }</td>
						<td>${vo.pitcherSo }</td>
					</tr>

				</c:forEach>

			</table>
		</td>

		<!-- ������������ -->

		<td align="left">
			<table width=150 height=90 border=1 cellspacing=0>
				<tr>
					<td colspan="7">TEAM RANKING</td>
				</tr>
				<tr>

					<td>����</td>
					<td>��</td>
					<td>���</td>
					<td>��</td>
					<td>��</td>
					<!-- <td>��</td> -->
					<td>�·�</td>
					<td>������</td>

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