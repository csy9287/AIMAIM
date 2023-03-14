# :clapper: AIM (All In Movie)
사용자에게 추천 영화를 제공해주는 영화 예매 사이트 AIM 
* 배포된 주소 : http://itwillbs11.cafe24.com/AIM/Main.aim

## 목차
1. [프로젝트 소개](#프로젝트-소개)
2. [기술 스택](#기술-스택)
3. [ERD 설계](#ERD-설계)
4. [프로젝트 화면](#프로젝트-화면)
5. [구현 목록](#구현-목록)

## 프로젝트 소개
* All In Movie의 약자이자 '(취향을) 저격하다'는 의미의 AIM!<br/> 사용자에게 추천 영화를 제공하는 것이 특징
* 제작기간 : 2022-10-31 ~ 2022-11-29
* 참여인원 : 8명
* 맡은 역할
- [X] 로그인
- [X] 마이페이지
- [X] 현재상영작
- [X] 영화 상세페이지
- [X] 리뷰
- [X] PPT 제작
  
## 기술 스택
* Java 11
* JSP
* Javascript
* Jsoup
* JQuery
* HTML5
* CSS3
* MySQL

## ERD 설계
![image](https://github.com/csy9287/AIMAIM/blob/master/AIM%20ERD.png?raw=true)

## 프로젝트 화면
![image](https://user-images.githubusercontent.com/77379794/224929773-4cb5ca4b-825d-4a73-ac7b-d4d40fd640fb.PNG)
![image](https://user-images.githubusercontent.com/77379794/224930455-bf7ed995-48a8-44d2-8565-b0b622da1f27.PNG)
![image](https://user-images.githubusercontent.com/77379794/224931196-78ab0cb6-dd92-4596-b981-c765b3ac7be1.png)
![image](https://user-images.githubusercontent.com/77379794/224930539-c163b20d-042a-4187-aa4c-6d35bc8dcb0a.PNG)
![image](https://user-images.githubusercontent.com/77379794/224930566-9a7afabe-2115-47f1-8c87-336a1246cd39.PNG)
![image](https://user-images.githubusercontent.com/77379794/224931433-891cd170-21b2-440e-9bb2-993c8c0cd65f.PNG)
![image](https://user-images.githubusercontent.com/77379794/224930643-edbdc9d1-8e6e-4cbf-adc0-c56cfdbc64aa.PNG)
![image](https://user-images.githubusercontent.com/77379794/224930660-8890a040-35f2-4513-8a15-c81de085109f.PNG)
![image](https://user-images.githubusercontent.com/77379794/224930672-6cf6b0ea-a602-46fd-847a-d1cfc532772f.PNG)
![image](https://user-images.githubusercontent.com/77379794/224930683-bc11424c-1ec5-4d10-a81b-e03ee81b92a4.PNG)

## 구현 목록
* 회원
- [X] 로그인
- [X] 회원가입
- [X] 아이디찾기
- [X] 비밀번호찾기
* 마이페이지
- [X] 회원정보 조회/수정/탈퇴
- [X] 예매내역 조회
- [X] 스토어 구매내역 조회
- [X] 1:1 문의내역 조회
- [X] 대관 문의내역 조회
* 영화
- [X] 추천 영화 조회
- [X] 영화API 및 크롤링을 통한 현재상영작 조회
- [X] 영화 상세정보 조회
- [X] 리뷰 작성 및 조회
- [X] 영화 예매
- [X] 영화 좌석선택 및 조회
- [X] 결제API를 사용한 영화 결제
- [X] 영화관 및 상영시간표 조회
* 스토어
- [X] 스토어 상품 조회
- [X] 스토어 상품 상세정보 조회
- [X] 장바구니 상품 담기, 수량 변경, 상품 제거
- [X] 결제API를 사용한 스토어 상품 결제
* 관리자
- [X] 게시판 글 등록/수정/삭제
- [X] 게시판 문의글 조회/답변
- [X] 영화 등록/수정
- [X] 영화관 스케줄 등록/수정
- [X] 대관 문의/답변
- [X] 스토어 상품 등록/수정/삭제
