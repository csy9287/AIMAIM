<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AIM - ALL IN MOVIE</title>
<link href="./assets/css/giftstore.css" rel="stylesheet" type="text/css">
</head>
<body>

	<!-- ���� ��� -->
	<jsp:include page="../inc/include.jsp" />

	<!-- ���/�׺� -->
	<jsp:include page="../inc/login_nav_bar.jsp"/>

<%-- ${Combo } --%>
<%-- ${giftCard } --%>
<%-- ${ticket } --%>
		
		
		
		
		
		
		<div id="contents" class="gift_store">
		
		<div class="category_product_list_wrap">
			<strong class="category_product_list_title">
				AIM's Pick
			</strong>

		
			<ul class="com_list_style">
				<li class="">
					<a href="./PopcornDetail.st?st_num=${Combo.st_num}" class="btn_category_product"> 
					<span class="com_list_img_wrap">
						<img src="./assets/img/${Combo.st_img }" alt="${Combo.st_name }"></span> 
						<span class="com_list_text_wrap"> 
						<span class="com_list_text_title">${Combo.st_name }</span> 
						<span class="com_list_text_name">${Combo.st_text }</span> 
						<span class="com_list_sale_price_wrap"> 
						<span class="store_deatail_source_price"><fmt:formatNumber value="${Combo.st_price }"/>��</span>
						</span>
					</span>
					</a> 
				</li>
				
				<li class="">
					<a href="./PopcornDetail.st?st_num=${giftCard.st_num}" class="btn_category_product"> 
					<span class="com_list_img_wrap">
						<img src="./assets/img/${giftCard.st_img }" alt="${giftCard.st_name }"></span> 
						<span class="com_list_text_wrap"> 
						<span class="com_list_text_title">${giftCard.st_name }</span> 
						<span class="com_list_text_name">${giftCard.st_text }</span> 
						<span class="com_list_sale_price_wrap"> 
						<span class="store_deatail_source_price"><fmt:formatNumber value="${giftCard.st_price }"/>��</span>
						</span>
					</span>
					</a> 
				</li>
				
				<li class="">
					<a href="./PopcornDetail.st?st_num=${ticket.st_num}" class="btn_category_product"> 
					<span class="com_list_img_wrap">
						<img src="./assets/img/${ticket.st_img }" alt="${ticket.st_name }"></span> 
						<span class="com_list_text_wrap"> 
						<span class="com_list_text_title">${ticket.st_name }</span> 
						<span class="com_list_text_name">${ticket.st_text }</span> 
						<span class="com_list_sale_price_wrap"> 
						<span class="store_deatail_source_price"><fmt:formatNumber value="${ticket.st_price }"/>��</span>
						</span>
					</span>
					</a> 
				</li>
			</ul>
			
			<c:if test="${mb_id.equals('admin')}">
					<input type="button" value="��ǰ���" onclick="location.href='./AdminPickAdd.ad';">
				</c:if>
				<!-- ��ư�� css���� ���� ������ ����! admin(������)�� �� �� �ֵ��� ������ ���� -->
		</div>
</div>


	<!-- ��� -->
<%-- 	<jsp:include page="../inc/footer.jsp" /> --%>
		

</body>
</html>