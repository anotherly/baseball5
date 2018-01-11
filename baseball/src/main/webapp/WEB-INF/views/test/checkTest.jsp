 <%@page import="baseball.ticket.model.TicketVo"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set value="${ paramValues.chk}" var="abc" />
<% int a = 0;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title> 
<script type="text/javascript">
 	function pay(){
		var newwin = window.open('_blank','winname','width=500, height=300');
		var fr = document.frm;
		fr.action = "card";
		frm.target= 'winname';
		frm.submit();
	 	/* window.opener.close();  */
		
		}; 

</script>
</head>
<body>

	<br> 선택하신 티켓 정보 :

	<form action="insertticket" method="post" name="frm">
		<input type="hidden" value="${param.userid }" name="userid"/>
		<input type="hidden" value="${param.stadium }" name="stadium" />
		<input type="hidden" value="${param.match_year}" name="match_year"/>
		<input type="hidden" value="${param.match_month}" name="match_month"/>
		<input type="hidden" value="${param.match_day}" name="match_day"/>
		
		<c:forEach items="${abc}" var="i" varStatus="num">
		
			<c:set value="${param.stadium }" var="stadium" />
			<c:set value="${param.seat }" var="seat" />
			<c:set value="${param.stadium }${i }${param.seat }" var="ticketinfo" />
			<c:set value="${i.substring(0,1) }" var="listt" />
			<c:set value="${i.substring(1) }" var="line" />

			<c:set value="${ticketinfo}" var="ticketinfo" />
			<c:set value="${listt}" var="listt" />
			<c:set value="${line}" var="line" />
			<c:set value="${seat}" var="seat" />
			<c:set value="${stadium}" var="stadium" />
			
			티켓 번호 : <input type="text" value="${ticketinfo }"
				name="reallist[${ num.index}].ticketinfo" />
			행 : <input type="text" value="${listt}"
				name="reallist[${ num.index}].listt" />
			열 : <input type="text" value="${line}"
				name="reallist[${ num.index}].line" />
			등급 : <input type="text" value="${seat}"
				name="reallist[${ num.index}].seat" />
			구장 : <input type="text" value="${stadium}"
				name="reallist[${ num.index}].stadium" />
			티켓 가격 : <input type="text" value="${data.dd.price }"
				name="reallist[${ num.index}].price" />
			
			<br>

		</c:forEach>
		금액:
		<c:choose>
			<c:when test="${param.seat eq 'b1' }">]${param.cnt * 15000 }
			<input type="hidden" value="${param.cnt * 15000 }" name="money" />
			</c:when>
			<c:when test="${param.seat eq 'b2' or param.seat eq 'b3' }">
			${param.cnt * 12000 }
			<input type="hidden" value="${param.cnt * 12000 }" name="money" />
			</c:when>
			<c:when test="${param.seat eq 'b4' or param.seat eq 'b5'}">
			${param.cnt * 10000 }
			<input type="hidden" value="${param.cnt * 10000 }" name="money" />
			</c:when>
			<c:when test="${param.seat eq 'b6' or param.seat eq 'b7'}">
			${param.cnt * 8000 }
			<input type="hidden" value="${param.cnt * 8000 }" name="money" />
			</c:when>
		</c:choose>
		
		예매하시겠습니까 ?  <a href="javascript:pay()">결제하기</a> 
	</form>
</body>
</html>