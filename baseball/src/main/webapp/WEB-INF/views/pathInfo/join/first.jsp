<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.regex.Matcher"%>
<%@ page import="java.util.regex.Pattern"%>

<!-- 	<span class="notnull">*�� �ִ� �������� ����� ������</span>
	<form action="join" enctype="multipart/form-data" method="post">
		<table border="1" width="500px" class="table_join">
			<tr>
				<td class="test"><span class="notnull">*</span>���̵�</td>
				<td><input type="text" name="userid" class = "input" id="userid" maxlength="12"> <input
					type="button" value="�ߺ�Ȯ��" id="uidBtn" /></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>�г���</td>
				<td colspan="2"><input type="text" name="nick"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>��й�ȣ</td>
				<td colspan="2"><input type="password" name="password" id="password" onchange="samepassword()"></td>
				
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>��й�ȣ Ȯ��</td>
				<td><input type="password" name="confirm" id="confirm" onchange="samepassword()"><br>
				<span id = "res" ></span></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>�̸�</td>
				<td colspan="2"><input type="text" name="name"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>����</td>
				<td><input type="file" name="file"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>�������</td>
				<td><input type="hidden" name="memBirth"> 
				<select	id="year">
						<option>- �����ϼ��� -</option>
				</select> <select id="month">
						<option>- �����ϼ��� -</option>
				</select> <select id="day">
						<option>- �����ϼ��� -</option>
				</select> <input type="text" id="datepicker1"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>�ּ�</td>
				<td colspan="2"><input type="text" name="address"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>�޴���</td>
				<td colspan="2"><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>���ŵ���</td>
				<td colspan="2"><input type="radio" name="receivemail"
					value="����" checked="checked">���� <input type="radio"
					name="receivemail" value="�ź�">�ź�</td>
			</tr>
			<tr>
				<td>��ȣ����</td>
				<td colspan="2"><select name="preferTeam">
						<option value="lgtwins">LGƮ����</option>
						<option value="ncdinos">NC���̳뽺</option>
						<option value="kiatigers">���Ÿ�̰���</option>
						<option value="samsunglions">�Ｚ���̿���</option>
						<option value="doosanbears">�λ꺣�</option>
						<option value="hanhwaeagles">��ȭ�̱۽�</option>
						<option value="ktwiz">KT����</option>
						<option value="nexenheroes">�ؼ��������</option>
						<option value="skwyverns">SK���̹���</option>
						<option value="lottegiants">�Ե����̾���</option>
				</select></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="button" id="submit" disabled="disabled" value="ȸ�� ����" />
					<a href="list">�ڷΰ���</a>
				</td>
			</tr>
		</table>
	</form> -->
	<p class="kb">State Factory ȸ������ </p>
	<span class="notnull" id="alarm">*�� �ִ� �������� ����� ������</span>
	<form action="join" enctype="multipart/form-data" method="post">
		<table width="80%" class="type04">
			<tr>
				<td class="test"><span class="notnull">*</span>���̵�</td>
				<td>
				<input placeholder="���̵�" type="text" name="userid"  id="userid" maxlength="12"> 
				<input class="button button4" type="button" value="�ߺ�Ȯ��" id="uidBtn" /></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>�г���</td>
				<td colspan="2"><input type="text" id="nick" name="nick"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>��й�ȣ</td>
				<td colspan="2"><input type="password" name="password" id="password" onchange="samepassword()"></td>
				
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>��й�ȣ Ȯ��</td>
				<td><input type="password" name="confirm" id="confirm" onchange="samepassword()"><br>
				<span id = "res" ></span></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>�̸�</td>
				<td colspan="2"><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>����</td>
				<td><input type="file" name="file" id="file"></td>
			</tr>
			<tr>
				<td class="test"><span class="notnull">*</span>�������</td>
				<td><input type="hidden" name="memBirth" id="birth"> 
				<select	id="year">
						<option>- �����ϼ��� -</option>
				</select> <select id="month">
						<option>- �����ϼ��� -</option>
						<option value="������">������</option>
				</select> <select id="day">
						<option>- �����ϼ��� -</option>
				</select> <!-- <input type="text" id="datepicker1"> --></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td colspan="2"><input type="text" name="address" id="address"></td>
			</tr>
			<tr>
				<td>�޴���</td>
				<td colspan="2"><input type="text" name="phone" id="phone"></td>
			</tr>
			<tr>
				<td>���ŵ���</td>
				<td colspan="2"><input type="radio" name="receivemail"
					value="����" checked="checked">���� <input type="radio"
					name="receivemail" value="�ź�">�ź�</td>
			</tr>
			<tr>
				<td>��ȣ����</td>
				<td colspan="2"><select name="preferTeam">
						<option value="lgtwins">LGƮ����</option>
						<option value="ncdinos">NC���̳뽺</option>
						<option value="kiatigers">���Ÿ�̰���</option>
						<option value="samsunglions">�Ｚ���̿���</option>
						<option value="doosanbears">�λ꺣�</option>
						<option value="hanhwaeagles">��ȭ�̱۽�</option>
						<option value="ktwiz">KT����</option>
						<option value="nexenheroes">�ؼ��������</option>
						<option value="skwyverns">SK���̹���</option>
						<option value="lottegiants">�Ե����̾���</option>
				</select></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input class="button button4" type="button" id="submit" disabled="disabled" value="ȸ�� ����" />
					<a href="../../../../baseball/pathInfo/home/notice/first" class="button button4">��������</a>
				</td>
			</tr>
		</table>
	</form>
