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
<form action="bList" method="post">
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
						
				</select> <input type="submit" value="�˻�"></td>
				<td colspan="17" align="center">���� Ÿ�ݱ��</td>
			</tr>
			
			
			
		<tr>
			<td>��</td>
			<td>��</td>
			<td>��</td>
			<td>�����̸�</td>
			<td>���</td>
			<td>����</td>
			<!-- <td>�̴�</td>
			<td>������</td> -->
			<td>Ÿ��</td>
			<!-- <td>Ÿ��</td> -->
			<td>����</td>
			<td>��Ÿ</td>
			<td>2��Ÿ</td>
			<td>3��Ÿ</td>
			<td>Ȩ��</td>
			<td>Ÿ��</td>
			<td>����</td>
			<td>����</td>
			<td>����</td>
			<td>����</td>
			<td>Ÿ��</td>
			<td>�����</td>
			<td>��Ÿ��</td>
			<td>OPS</td>
			<!-- <td>��</td>
			<td>��</td>
			<td>Ȧ��</td>
			<td>�����å��</td>
			<td>���̺�</td>
			<td>���̺��ȸ</td>
			<td>�̴�</td>
			<td>�Ǿ�Ÿ</td>
			<td>����</td>
			<td>��å��</td>
			<td>��Ȩ��</td>
			<td>����</td>
			<td>Ż����</td>
			<td>�Ǿ�Ÿ��</td>
			<td>WHIP</td> -->
			<td>���������ð�</td>
			<td>�󼼺���</td>
		</tr>

		<c:forEach items="${data.dd }" var="vo">
			<tr>

				<%-- <td>${vo.playerId}</td> --%>
				<td>${vo.year}</td>
				<td>${vo.month}</td>
				<%-- <td>${vo.sysFile}</td> --%>

				<td>${vo.teamId}</td>
				
				<td>${vo.playerName}</td>
				<td>${vo.g}</td>
				<td>${vo.gs}</td>
				<%-- <td>${vo.inn}</td>
				<td>${vo.tc}</td> --%>
				<%-- <td>${vo.po}</td>
				<td>${vo.e}</td>
				<td>${vo.dp}</td>
				<td>${vo.fpct}</td>
				<td>${vo.rf}</td> --%>
				<td>${vo.ab}</td>
				<td>${vo.r}</td>
				<td>${vo.h}</td>
				<td>${vo.twoBase}</td>
				<td>${vo.thirdBase}</td>
				<td>${vo.hr}</td>
				<td>${vo.rbi}</td>
				<td>${vo.bb}</td>
				<td>${vo.so}</td>
				<td>${vo.sb}</td>
				<td>${vo.cs}</td>
				<td>${vo.avg}</td>
				<td>${vo.obp}</td>
				<td>${vo.slg}</td>
				<td>${vo.ops}</td>
				<%-- <td>${vo.w}</td>
				<td>${vo.l}</td>
				<td>${vo.hold}</td>
				<td>${vo.era}</td>
				<td>${vo.sv}</td>
				<td>${vo.svo}</td>
				<td>${vo.ip}</td>
				<td>${vo.pitcherH}</td>
				<td>${vo.pitcherR}</td>
				<td>${vo.er}</td>
				<td>${vo.pitcherHr}</td>
				<td>${vo.pitcherBb}</td>
				<td>${vo.pitcherSo}</td>
				<td>${vo.pitcherAvg}</td>
				<td>${vo.whip}</td> --%>
				<td>${vo.regDate}</td>
				<td><a href="view?playerId=${vo.playerId}">${vo.playerName}</a></td>
				<%-- <td>${vo.grade}</td> --%>
			</tr>
		</c:forEach>

	</table>

</body>
</html>