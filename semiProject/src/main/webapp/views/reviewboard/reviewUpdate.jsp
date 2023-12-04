<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en-us">
   

  <head>
  <script src="/resources/js/reviewboard.js"></script>
  <meta charset="UTF-8">
  
  <title>semi-Project</title>
  <link rel="stylesheet" href="/resources/css/setting.css">
  <link rel="stylesheet" href="/resources/css/plugin.css">
  <link rel="stylesheet" href="/resources/css/semi.css">
  <link rel="stylesheet" href="/resources/css/common.css">
  <link rel="stylesheet" href="/resources/css/style.css">
  <link rel="stylesheet" href="/resources/css/yh.css">
  <link rel="stylesheet" href="/resources/css/table.css">
  <link rel="stylesheet" th:href="@{./css/bootstrap.css}">
        <link rel="stylesheet" th:href="@{./css/custom.min.css}">
        <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">

  <!-- Web fonts -->
  <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">

  <!-- favicon.ico. Place these in the root directory. -->
  <link rel="shortcut icon" href="favicon.ico">

  <!-- 잡것 -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Cabin:400,700|Playfair+Display:900" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">
</head>

<body>
  <!-- [S]glamping-N1 -->
  <header class="glamping-N1" data-bid="jILPJ5JfH5">
    <div class="header-container container-lg">
      <div class="header-left">
        <h1 class="header-title">
          <a href="home.html">
            <img src="/resources/img/pessport.png" alt="로고">
          </a>
        </h1>
      </div>
      <div class="header-center">
        <ul class="header-gnblist">
          <li class="header-gnbitem">
            <a class="header-gnblink" href="map.html">
              <span>여행지추천</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="map.html">
                  <span>지도로 이동</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="list.html">
              <span>자유게시판</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="list.html">
                  <span>게시판</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="list2.html">
                  <span>게시글 작성</span>
                </a>
              </li> 
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="review.html">
              <span>리뷰게시판</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="review.html">
                  <span>게시판</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="review2.html">
                  <span>게시글 작성</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="orderList.html">
              <span>여행패키지</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="orderList.html">
                  <span>패키지 상품</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="myPage.html">
              <span>마이페이지</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="infoDetail.html">
                  <span>내정보</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="myList.html">
                  <span>구매목록</span>
                </a>
              </li>
            </ul>
          </li>
          <a class="header-gnblink log" href="login.html">
            <span>로그인</span>
          </a>
          <a class="header-gnblink log1" href="register.html">
            <span>회원가입</span>
          </a>
        </div>
      </div>
    </header>
    <div class="glamping-N3">
      <img class="footer-backimg img-pc" src="/resources/img/airplane2.jpg" alt="PC 푸터 비주얼">
    </div>
    <!-- [E]glamping-N1 -->
    <br><br><br>
    
    <section class="notice">
      <div class="page-title">
        <div class="container">
          <h3 class="pgc" style="font-size: 100px;"><b>Review</b></h3>
          <br>
          <h3 class="pgc">Tell us about your experience.</h3>
        </div>
      </div>
        <br><br><br>
  <form id = "detail-form" >
          <div class="container">
          		  <input type="hidden" name="idx" value="${reviewboard.idx}">
          		  <input type="hidden" name="star" value="${reviewboard.star}">          		 
          		  
          		 
            <div class="container iipp3">
             <table class="board-table">
             
               <tr>
                <th width=20% class="text-center warning">번호</th>
                <td width=30% class="text-center"><input class="minsu" type="text" name="idx" value="${reviewboard.idx}" disabled></td>
                <th width=20% class="text-center warning">작성일</th>
                <td width=30% class="text-center"><input class="minsu" type="text" name="indate" value="${reviewboard.indate}" disabled></td>
               </tr>
               <tr>
                <th width=20% class="text-center warning">작성자</th>
                <td width=30% class="text-center"><input class="minsu" type="text" name="nickName" value="${reviewboard.nickName}" disabled></td>
                <th width=20% class="text-center warning">조회수</th>
                <td width=30% class="text-center"><input class="minsu" type="text" name="views" value="${reviewboard.views}" disabled></td>
               </tr>
               <tr>
                <th width=20% class="text-center warning">제목</th>
                <td width=30% class="text-center"><input class="minsu" type="text" name="title" value="${reviewboard.title}"></td>
                <th width=20% class="text-center warning">별점</th>
                <td width=30% class="text-center"><input class="minsu" type="text" name="star" value="${reviewboard.star}" disabled></td>
               </tr>
               <tr>
                <th width=20% class="text-center warning">내용</th>
                 <td colspan="4" class="text-left www" valign="top" height="200" style="text-align: left;">
                  <textarea class="minsu" style="height: 230px;" id="summernote" cols="30" rows="10" name="content">${reviewboard.content}</textarea>
                  <script>
                      $('#summernote').summernote({
                        tabsize: 2,
                        height: 300
                      });
                    </script>	
                 </td>
               </tr>
               
            </table>
        </div>
    </div>
    <div class="pt-1 wwwii">
    <button class="custom-btn btn-6" onclick="reviewUpdate()">수정완료</button>
    <button type="button" class="custom-btn btn-6" onclick="window.location.href='/reviewBoardList.do?cpage=1'">취소</button>
	</div>
</form>    
</section>
<div class="page-title">
  <div class="container">
      <h3 class="pgc" style="font-size: 50px;">
        Thank you for using [ Pess-Port ] travel agency.</h3>
  </div>
</div>
    <!-- [E]glamping-N9 -->
  <!-- [S]glamping-N3 -->
  <footer class="glamping-N3" data-bid="hNLPJ5jFl2">
    <div class="footer-container">
      <!-- <audio src="./music/home.mp3" controls="controls" autoplay="autoplay" style="display: none;"></audio> -->
      <img class="footer-backimg img-pc" src="/resources/img/apl.jpg" alt="PC 푸터 비주얼">
      <div class="footer-body container-md">
        <h2 class="footer-logo">
          <a href="javascript:void(0)">
            <img src="/resources/img/pessport.png" alt="로고">
          </a>
        </h2>
       
        <ul class="footer-snslist">
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="/resources/icon/ico_instagram_white.svg" alt="인스타그램">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="/resources/icon/ico_youtube_white.svg" alt="유튜브">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="/resources/icon/ico_facebook_white.svg" alt="페이스북">
            </a>
          </li>
        </ul>
        <ul class="footer-menugroup">
          <li class="footer-menulink">
            <a href="javascript:void(0)">
              <span>이용약관</span>
            </a>
          </li>
          <li class="footer-menulink">
            <a href="javascript:void(0)">
              <span>개인정보처리방침</span>
            </a>
          </li>
          <li class="footer-menulink">
            <a href="home1.html">
              <span>이스터에그</span>
            </a>
          </li>
        </ul>
        <div class="footer-txtgroup">
          <div class="footer-txt">
            <p> 경기도 안양시 만안구 안양로 303 안양메쎄타워 8층 </p>
            <p>
              <span>T. 010-1234-5678</span>
              <span>E. pessport@naver.com</span>
            </p>
          </div>
          <div class="footer-txt">
            <p>2023 BY SEMI-PROJECT "PESS-PORT"</p>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- [E]glamping-N3 -->
  <script src="/resources/js/style/setting.js"></script>
  <script src="/resources/js/style/plugin.js"></script>
  <script src="/resources/js/style/template.js"></script>
  <script src="/resources/js/style/common.js"></script>
  <script src="/resources/js/style/script.js"></script>
  
</body>
</html>