<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="detail" method="post" enctype="multipart/form-data">
		<table border="2">
			<tr>
				<td>����������ȣ</td>
				<td><input type="hidden" name="playerId" value="${data.dd.playerId }">
				${data.dd.playerId }</td>
			</tr>
			<tr>
				<td>��ϳ⵵</td>
				<td><input type="text" name="year" /></td>
			</tr>
			 <tr>
				<td>���ܸ�</td>
				<td><select name="teamId">

						<option selected="selected" value="non">����</option>
						<option value="doosan">�λ�</option>
						<option value="nc">NC</option>
						<option value="nexen">�ؼ�</option>
						<option value="lg">LG</option>
						<option value="kia">KIA</option>
						<option value="sk">SK</option>
						<option value="hanhwa">��ȭ</option>
						<option value="lotte">�Ե�</option>
						<option value="samsung">�Ｚ</option>
						<option value="kt">KT</option>

				</select></td>
			</tr> 
			 <tr>
				<td>�������</td>
				<td><select name="status">

						<option selected="selected" value="regular">���ļ���</option>
						<option value="non-regular">�Ű���</option>
						<option value="retirement">����</option>
						<option value="break">����Ż��</option>
				</select></td>
			</tr> 
			<tr>
				<td>Ŭ����</td>
				<td><select name="gun">

						<option selected="selected" value="2">2��</option>
						<option value="1">1��</option>
						
				</select></td>
			</tr> 
			<tr>
				<td>����</td>
				<td><input type="file" name="playerPhoto" /></td>
			</tr>
			<tr>
				<td>���ȣ</td>
				<td><input type="text" name="backNum" /></td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="playerName" /></td>
			</tr>
			<tr>
				<td>������</td>
				<td><select name="position">

						<option selected="selected" value="p, pitcher, ����">����</option>
						<option value="c, infielder, ���߼�, ����">����</option>
						<option value="1b, infielder, ���߼�, 1���">1���</option>
						<option value="2b, infielder, ���߼�, 2���">2���</option>
						<option value="3b, infielder, ���߼�, 3���">3���</option>
						<option value="ss, infielder, ���߼�, ���ݼ�">���ݼ�</option>
						<option value="lf, outfielder, �ܾ߼�, ���ͼ�">���ͼ�</option>
						<option value="cf, outfielder, �ܾ߼�, �߰߼�">�߰߼�</option>
						<option value="rf, outfielder, �ܾ߼�, ���ͼ�">���ͼ�</option>
						
						
				</select></td>
			</tr> 
		<tr>
				<td>�������</td>
				<td><input type="text" name="playerBirth" /></td>
			</tr>
			<tr>
				<td>��ű�</td>
				<td><input type="text" name="schoolName" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="height" /></td>
			</tr>
			<tr>
				<td>ü��</td>
				<td><input type="text" name="weight" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="country" /></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="salary" /></td>
			</tr>
			<tr>
				<td>��</td>
				<td><select name="pitchingHand">

						<option selected="selected" value="r">����</option>
						<option value="l">����</option>
												
				</select></td>
			</tr> 
			<tr>
				<td>Ÿ</td>
				<td><select name="battingHand">

						<option selected="selected" value="r">��Ÿ</option>
						<option value="l">��Ÿ</option>
						<option value="b">��Ÿ</option>
												
				</select></td>
			</tr> 
			<tr>
				<td colspan="2" align="center">
				<td><input type="submit" value="�Է�" /></td>
			</tr>
		</table>
	</form>
</body>

</html>