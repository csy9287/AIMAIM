<%@page import="org.apache.commons.collections4.bag.SynchronizedSortedBag"%>
<%@page import="java.util.List"%>
<%@page import="com.aim.store.db.AdminStoreDAO"%>
<%@page import="com.aim.store.db.StoreDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>AIM - ����� ��ǰ ����Ʈ</title>
<link href="./assets/css/common.css" rel="stylesheet" type="text/css">
<link href="./assets/css/default.css" rel="stylesheet" type="text/css">
</head>
<body>
	
	<%-- ${adminStoreList } --%>
	<!-- ���� Ȯ�� �Ϸ� -->
	
	<%
		AdminStoreDAO dao = new AdminStoreDAO();
		List list = dao.getAdminStoreList();
		int count = list.size();
		
/////////////////////////////////////////////////////////////////////////////////////////////////////
// ����¡ ó�� (1)

// �� �������� ������ ���� ����
int pageSize = 5;		// �� ���� 5������ ������ ��

// �� �������� �� ��° ���������� Ȯ��
String pageNum = request.getParameter("pageNum");
if(pageNum == null){
pageNum = "1";

}

// ������ ��ȣ�� ����ϱ�	1	6	11	16.... (�� �������� ���� 5�����̴ϱ�!)
int currentPage = Integer.parseInt(pageNum);		// parseInt()�� ����� StringŸ���� ���ڸ� intŸ������ ��ȯ����
int startRow = (currentPage-1) * pageSize + 1;

// ���� ��ȣ�� ����ϱ�		5	10	15	20....
int endRow = currentPage * pageSize;
	
	%>


	<div id="contents" class="contents_event_home">
		<div class="title_top">
			<h2 class="tit">����� ��ǰ ����Ʈ</h2>
		</div>
	</div>

	<table class="tbl_list text_c">
		<caption>����� ��ǰ ����Ʈ</caption>
		<colgroup>
			<col style="width: 10%;">
			<col style="width: 15%;">
			<col style="width: auto;">
			<col style="width: 15%;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">��ȣ</th>
				<th scope="col">ī�װ�</th>
				<th scope="col">�̹���</th>
				<th scope="col">��ǰ��</th>
				<th scope="col">����</th>
				<th scope="col">����</th>
				<th scope="col">����</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="dto" items="${adminStoreList}">
				<tr>
					<td>${dto.st_num}</td>
					<td>${dto.category_name }</td>
					<td>
						<img src="./assets/img/${dto.st_img }" width="200" height="200">
					</td>
					<td>${dto.st_name }</td>
					<td>
						<fmt:formatNumber value="${dto.st_price }"/>��
					</td>
					<td>${dto.st_text }</td>
					<td>
						<a href="./AdminStoreModify.ad?st_num=${dto.st_num }">����</a>
						/
						<a href="./AdminStoreDel.ad?st_num=${dto.st_num }">����</a>
					</td>
				</tr>
			</c:forEach>
			
		</tbody>
	</table>


		<!-- ����¡ ó���� ���� ������ ���� -->
		<!-- boardProject�� boardList.jsp ���� -->
<%
		/////////////////////////////////////////////////////////////////////////////////////////////
		// ����¡ ó��(2)
		
		if(count != 0){		// ���� �ϳ��� ���� ��
				// �� ������ = �� ����(�ѷ�) / ������ �� ���	
				//	=> ����, �������� ���� �� ������ 1���� �߰�
				
				// ��ü ������ ��
				int pageCount = (count / pageSize) + (count % pageSize == 0? 0:1); // ���׿�����..... �̰� ����
																	// A? t:f
				// �� ȭ�鿡 ������ ������ ��
				int pageBlock = 3;
				
				// ������ ���� ���۹�ȣ		1~10page ������ ���� ���� ������ ���� ù ��° ��ȣ�� 1��! 
				//								11~20page ������ ���� ���� ������? 11
				int startPage = ((currentPage - 1) / pageBlock) * pageBlock + 1;
				
				// ������ ���� ����ȣ
				int endPage = startPage + pageBlock - 1;
				
				if(endPage > pageCount){
					endPage = pageCount;
				}
				
				// [����]
				if(startPage > pageBlock){
					%>
						<a href="boardList.jsp?pageNum=<%=startPage-pageBlock %>">[����]</a>
					<%
				}
				
				// ���� (��������ũ) 1,2,3,..... 
				for(int i = startPage; i <= endPage ; i++){
					%> 
						<a href="boardList.jsp?pageNum=<%=i %>"><%=i %></a>	
					<% 
				}
				
				// [����]
				if(endPage < pageCount){
					%>
						<a href="boardList.jsp?pageNum=<%=startPage+pageBlock %>">[����]</a>
					<%
				}
		}
		
		/////////////////////////////////////////////////////////////////////////////////////////////
		%>


</body>
</html>