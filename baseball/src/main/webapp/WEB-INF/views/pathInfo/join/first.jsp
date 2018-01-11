<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.regex.Matcher"%>
<%@ page import="java.util.regex.Pattern"%>

<!-- 	<span class="notnull">*이 있는 선택지는 비우지 마세요</span>
	<form action="join" enctype="multipart/form-data" method="post">
		<table border="1" width="500px" class="table_join">
			<tr>
				<td class="test"><span class="notnull">*</span>아이디</td>
				<td><input type="text" name="userid" class = "input" id="userid" maxlength="12"> <input
					type="button" value="중복확인" id="uidBtn" /></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>닉네임</td>
				<td colspan="2"><input type="text" name="nick"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>비밀번호</td>
				<td colspan="2"><input type="password" name="password" id="password" onchange="samepassword()"></td>
				
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>비밀번호 확인</td>
				<td><input type="password" name="confirm" id="confirm" onchange="samepassword()"><br>
				<span id = "res" ></span></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>이름</td>
				<td colspan="2"><input type="text" name="name"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>사진</td>
				<td><input type="file" name="file"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>생년월일</td>
				<td><input type="hidden" name="memBirth"> 
				<select	id="year">
						<option>- 선택하세요 -</option>
				</select> <select id="month">
						<option>- 선택하세요 -</option>
				</select> <select id="day">
						<option>- 선택하세요 -</option>
				</select> <input type="text" id="datepicker1"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>주소</td>
				<td colspan="2"><input type="text" name="address"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>휴대폰</td>
				<td colspan="2"><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>수신동의</td>
				<td colspan="2"><input type="radio" name="receivemail"
					value="동의" checked="checked">동의 <input type="radio"
					name="receivemail" value="거부">거부</td>
			</tr>
			<tr>
				<td>선호구단</td>
				<td colspan="2"><select name="preferTeam">
						<option value="lgtwins">LG트윈스</option>
						<option value="ncdinos">NC다이노스</option>
						<option value="kiatigers">기아타이거즈</option>
						<option value="samsunglions">삼성라이온즈</option>
						<option value="doosanbears">두산베어스</option>
						<option value="hanhwaeagles">한화이글스</option>
						<option value="ktwiz">KT위즈</option>
						<option value="nexenheroes">넥센히어로즈</option>
						<option value="skwyverns">SK와이번스</option>
						<option value="lottegiants">롯데자이언츠</option>
				</select></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="button" id="submit" disabled="disabled" value="회원 가입" />
					<a href="list">뒤로가기</a>
				</td>
			</tr>
		</table>
	</form> -->
	<p class="kb">State Factory 회원가입 </p>
	<span class="notnull" id="alarm">*이 있는 선택지는 비우지 마세요</span>
	<form action="join" enctype="multipart/form-data" method="post">
		<table width="80%" class="type04">
			<tr>
				<td class="test"><span class="notnull">*</span>아이디</td>
				<td>
				<input placeholder="아이디" type="text" name="userid"  id="userid" maxlength="12"> 
				<input class="button button4" type="button" value="중복확인" id="uidBtn" /></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>닉네임</td>
				<td colspan="2"><input type="text" id="nick" name="nick"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>비밀번호</td>
				<td colspan="2"><input type="password" name="password" id="password" onchange="samepassword()"></td>
				
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>비밀번호 확인</td>
				<td><input type="password" name="confirm" id="confirm" onchange="samepassword()"><br>
				<span id = "res" ></span></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>이름</td>
				<td colspan="2"><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>사진</td>
				<td><input type="file" name="file" id="file"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>생년월일</td>
				<td><input type="hidden" name="memBirth" id="birth"> 
				<select	id="year">
						<option>- 선택하세요 -</option>
				</select> <select id="month">
						<option>- 선택하세요 -</option>
						<option value="ㅈㅈㅈ">ㅈㅈㅈ</option>
				</select> <select id="day">
						<option>- 선택하세요 -</option>
				</select> <!-- <input type="text" id="datepicker1"> --></td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="2"><input type="text" name="address" id="address"></td>
			</tr>
			<tr>
				<td>휴대폰</td>
				<td colspan="2"><input type="text" name="phone" id="phone"></td>
			</tr>
			<tr>
				<td>수신동의</td>
				<td colspan="2"><input type="radio" name="receivemail"
					value="동의" checked="checked">동의 <input type="radio"
					name="receivemail" value="거부">거부</td>
			</tr>
			<tr>
				<td>선호구단</td>
				<td colspan="2"><select name="preferTeam">
						<option value="lgtwins">LG트윈스</option>
						<option value="ncdinos">NC다이노스</option>
						<option value="kiatigers">기아타이거즈</option>
						<option value="samsunglions">삼성라이온즈</option>
						<option value="doosanbears">두산베어스</option>
						<option value="hanhwaeagles">한화이글스</option>
						<option value="ktwiz">KT위즈</option>
						<option value="nexenheroes">넥센히어로즈</option>
						<option value="skwyverns">SK와이번스</option>
						<option value="lottegiants">롯데자이언츠</option>
				</select></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input class="button button4" type="button" id="submit" disabled="disabled" value="회원 가입" />
					<a href="../../../../baseball/pathInfo/home/notice/first" class="button button4">메인으로</a>
				</td>
			</tr>
		</table>
	</form>
