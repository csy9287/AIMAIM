<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<article>
		<h1>${sessionScope.mb_id }���� ��ٱ���</h1>

		<div>
			<table>
					<tr>
						<td> ��ȣ </td>
						<td> �̹��� </td>
						<td> ��ǰ�� </td>
						<td> ��ǰ���� </td>
						<td> ���� </td>
						<td> �� �ݾ� </td>
						<td> ���� </td>
					</tr>
					
				<c:forEach var="i" begin="0" end="${cartList.size()-1}" step="1">
					<c:set var="cart" value="${cartList[i]}" />
					<c:set var="prdt" value="${productList[i]}" />
					<tr>
						<td> ${cart.c_num } </td>
						<td>
							<img src="./upload/${prdt.st_img}" alt="${prdt.st_img}">
						</td>
						<td> ${prdt.st_name } </td>
						<td> ${prdt.st_price } </td>
						<td> ${cart.c_amount } </td>
						<td> ${prdt.st_price * cart.c_amount } </td>
						<td>
							<a href="./CartDeleteAction.ct?c_num=${cart.c_num }">����</a>
						</td>
					</tr>
				</c:forEach>
				
			</table>
		</div>
		
		<div>
			<input type="button" value="�����ϱ�" onclick="location.href='./OrderStart.or';"> 
			<input type="button" value="��� �����ϱ�" onclick="location.href='./StoreMain.st';">

		</div>
		
	</article>

<c:set var="totalPrice" value="0" />
<c:foreach var="list" items="${productList }">
<c:set var="totalPrice" value=${totalPrice + list.st_price} />

ȭ�����

</c:foreach>

${totalPrice}

int totalPrice = 0;

for(int i = 0; i < list.length(); i++){
	totalPrice += list(i).price;
	
}


</body>
</html>