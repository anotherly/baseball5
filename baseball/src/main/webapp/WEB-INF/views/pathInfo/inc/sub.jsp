<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table width="100%">
	<c:forEach items="${data.subMenu }" var="mm">
		<c:choose>
			<c:when test="${loginVo.grade ne 'admin'}">
				<c:choose>
					<c:when test="${mm.korName eq '��� �Է�/����'||mm.korName eq '����������'}">
						<tr>
							<td align="center"> </td>
						</tr>
					</c:when>
					<c:otherwise>
						<tr>
							<td align="center"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></td>
						</tr>
					</c:otherwise>
				</c:choose>
			</c:when>
			<c:otherwise>
				<tr>
					<td align="center"><a href="../${mm.name}/${mm.url }">${mm.korName }</a></td>
				</tr>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</table>