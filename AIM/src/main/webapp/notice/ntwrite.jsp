<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- 각종 요소 -->
	<jsp:include page="../inc/include.jsp" />
	<!-- 상위 배너 -->
	<jsp:include page="../inc/topbanner.jsp"/>
	<!-- 헤더/네비 -->
	<jsp:include page="../inc/login_nav_bar.jsp" />
	<!-- 사이드 퀵메뉴 -->
	<jsp:include page="../inc/side_quick_menu.jsp" />
</head>
<body>

	<div id="contents" class="contents_customer area__movingbar litype5"
		style="">
		<div class="title_top">
			<h2 class="tit">고객센터</h2>
		</div>
		<ul class="tab_wrap outer actionmovingbar">
			
			<li class="active"><button type="button" class="tab_tit"
					style="width: 33.33%; left: 0%;" onclick="location.href='./NtList.nt';">
					<span>공지사항</span>
				</button>
				
				<div class="tab_con">
					<h3 class="hidden">공지사항</h3>
					<ul class="tab_wrap inner">
						<li class="active">
							<div class="tab_con ty3">
								<h4 class="hidden">전체 공지</h4>
					<form action="./NtWrite.nt" method="post" enctype="multipart/form-data">
						<table class="tbl_list text_c" summary="공지사항에 대한 표입니다">
						<caption>공지 사항을 작성해주세요</caption>
						<colgroup>
							<col style="width: 15%;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							
							<tr>
								<th scope="row" class="req">분류</th>
								
								<td>
									<select title="문의내용 분류선택" name="nt_select">
										<option	value="0">분류 선택</option>
										<option value="1">전체</option>
										<option value="2">영화관</option>
										<option value="3">영화</option>
										<option value="4">멤버십</option>
										<option value="5">예매/결제</option>
										<option value="6">이벤트</option>
										<option value="7">홈페이지/모바일</option>
										<option value="8">개인정보</option>
									</select>
								</td>
							</tr>
							
							<tr>
								<th scope="row" class="req">제목</th>
								<td>
									<div class="bx_textarea">
										<input type="text" class="ty2 w_full" placeholder="제목을 입력해주세요" title="공지사항 제목입력" name="nt_subject">
										
									</div>
								</td>
							</tr>
							<tr>
								<th scope="row" class="req">내용</th>
								<td>
									<div class="bx_textarea">
										<textarea class="ty2" cols="10" rows="10" name="nt_content" 
										title="공지사항 내용을 입력해주세요">
										</textarea>
								</div></td>
							</tr>
							<tr>
								<th scope="row">첨부파일</th>
								<td>
									<div class="bx_file ">
										<input type="file" id="file" name="nt_file">
											<label class="" for="file">파일선택</label>
									<div class="file_item">
									<span class="" id="iDfileUpload1"> ${file } </span>
									<button class="btn_del">삭제</button></div>
									</div>
									<span class="txt_caution1 fl_r with_inp">첨부 파일형식 : jpg / jpeg / png / bmp / gif / pdf (5MB X 1개)</span>
								</td>
							</tr>
							
						</tbody>
					</table>
					<table class="tbl_form" summary="고객정보작성 테이블">
						<caption>고객정보를 작성해주세요</caption>
						<colgroup>
							<col style="width: 15%;">
							<col style="width: auto;">
						</colgroup>
						<tbody>
							<tr>						
								<th scope="row" class="req">관리자</th>
								<td>
									<div class="bx_textarea">
										<input type="text" class="ty2 inp_name" title="어드민 입력" name="mb_id" value="${dto.mb_id }">
										</div>
								</td>
							</tr>
							<tr>						
								<th scope="row" class="req">관리자 비밀번호</th>
								<td>
									<div class="bx_textarea">
										<input type="password" class="ty2 inp_name" title="어드민 비밀번호" name="mb_pw">
										</div>
								</td>
							</tr>
							</tbody>
					</table>
					<input type="submit" value="작성하기" class="btn_col2 ty6">
								</form>
								
							</div></li>
						
					</ul>
				</div></li>
				
			<li><button type="button" class="tab_tit" style="width: 33.33%; left: 33.33%;" onclick="location.href='./HpLogin.hp';">
					<span>1:1문의</span>
				</button></li>
			<li><button type="button" class="tab_tit" style="width: 33.33%; left: 66.67%;" onclick="location.href='./MyHpList.hp';">
					<span>문의 내용 목록</span>
				</button></li>
		
			<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
		</ul>
	</div>
</body>
</html>