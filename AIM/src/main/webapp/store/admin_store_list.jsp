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
<script type="text/javascript">

function deleteChk(st_num){
		if(confirm("��ǰ�� �����Ͻðڽ��ϱ�?")){
			location.href="./AdminStoreDel.ad?st_num="+st_num;
					
		} else{
			return;
		}
	}

</script>
</head>
<body>

	
	
	
	<!-- ���� ��� -->
	<jsp:include page="../inc/include.jsp"/>

	<!-- ���/�׺� -->
	<jsp:include page="../inc/login_nav_bar.jsp"/>



	<div id="contents" class="contents_event_home">
		<div class="movi_pre_list">
			<h3 class="tit_type0" style="margin-top: 50px;"><strong class="ty2 eng">AIM</strong> ����� ��ǰ ���</h3>
		</div>
	</div>


	<table class="tbl_list text_c" style="width: 1100px; margin: 0 auto;">
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
						<a href='javascript:deleteChk("${dto.st_num}")'>����</a>

					</td>
				</tr>
			</c:forEach>
		
		
		</tbody>
		
	
	</table>

	
	<div class="btn_btm_wrap">
		<a href="./AdminStoreAdd.ad" class="btn_col3 ty6">��ǰ ���</a>
		<a href="./StoreMain.st" class="btn_col3 ty6">����� ����</a>
	</div>





	<!-- ��� -->
	<jsp:include page="../inc/footer.jsp" />
	

</body>
</html>