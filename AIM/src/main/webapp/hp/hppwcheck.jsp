<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function pwCheck(){
		if(document.hp.mb_pw.value == ""){
			alert("��й�ȣ�� �Է��ϼ���");
			return false;
		}
	}

</script>
</head>
<body>
	<%
		/* �α��� ����! ȸ���� ���� ���� */
			String id = (String) session.getAttribute("mb_id");
			if (id == null) {
				response.sendRedirect("./Login.aim");
			}
	%>
	<!-- ���� ��� -->
	<jsp:include page="../inc/include.jsp" />
	<!-- ���� ��� -->
	<jsp:include page="../inc/topbanner.jsp" />
	<!-- ���/�׺� -->
	<jsp:include page="../inc/nav_bar.jsp" />
	
	<br><br><br><br><br><br><br>
	
	<form action="./HpPwCheckAction.hp?hp_bno=${param.hp_bno }&pageNum=${param.pageNum }" method="post" name="hp">
	<input type="hidden" name="mb_id" value="${sessionScope.mb_id }">
	<div id="contents">
		<div class="title_top">
			<h2 class="tit">���Ǳ� ��й�ȣ Ȯ��</h2>
		</div>
			<table class="tbl_form">
				<colgroup>
					<col style="width: 15%;">
					<col style="width: auto;">
				</colgroup>

			<tbody>
	
				<tr>
					<th scope="row" class="req1">��й�ȣ</th>
					<td>
						<input type="password" name ="mb_pw">
						
					</td>
				</tr>
				
			</tbody>
		</table>
			<div class="btn_btm_wrap">
				<a href="./MyHpList.hp" class="btn_col3 ty6">������� ���ư���</a>
				<input type="submit" value="��й�ȣ Ȯ��" class="btn_col2 ty6" onclick='pwCheck();'>
			</div>
			
		</div>
	
	</form>
</body>
</html>