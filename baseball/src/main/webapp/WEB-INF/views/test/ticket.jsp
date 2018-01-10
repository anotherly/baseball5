<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>	
${param.stadium }<br>
${param.seat}
	<form action="cnt" method="post" > <!-- 티켓 장 수 선택화면. -->
		<input type="hidden" value="${data.dd.match_year }" name="match_year"/>
		<input type="hidden" value="${data.dd.match_month }" name="match_month"/>
		<input type="hidden" value="${data.dd.match_day }" name="match_day"/>
		<input type="hidden" value="${param.userid }" name="userid"/>
		<input type="hidden" value="${param.stadium }" name="stadium"/>
		<input type="hidden" value="${param.seat }" name="seat"/>
		<table>
			<tr>
				<td>
				티켓 장 수를 선택하세요
					<select name="cnt" id="cnt">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="다음단계"/></td>
			</tr>
		</table>
	</form>
</body>
</html>