<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제창 만들기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/main-cafe/css/cafe-all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/main-cafe/css/main-cafe-header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/main-cafe/css/cafe-footer.css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/point/css/modal.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/point/css/point.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="preload" as="style" crossorigin="anonymous"
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <link rel="stylesheet"
    href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <link rel="stylesheet" as="style" href="Pretendard-Medium.otf">
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/static/allimages/favicon.jpg">
	
</head>
<body>
    <header>
        <div role="presentation" class="nav-bar" style="position: fixed; padding-right: initial;">
            <div class="main-bar isLoggedIn" role="presentation">
                <nav class="main-bar-nav">
                    <section>
                        <div class="main-bar-nav-top">
                            <div class="main-bar-nav-top-logo">
                                <button type="button" aria-label="job category menu button" data-attribute-id="gnb" data-gnb-kind="jobCategoryMenu"
                                    class="main-bar-hamberger">
                                    <img src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Ficon-menu.png&amp;w=17&amp;q=75"
                                        alt="hamberger menu" height="16" style="width:17px;height:14px;object-fit:contain">
                                </button>
                                <a href="" class="main-bar-nav-top-logo-a">
                                    <img src="${pageContext.request.contextPath}/static/allimages/logo.jpg"  width="74" height="16" alt="Oh!스카 로고">
                                </a>
                            </div>
                        </div>
                    </section>
                    <section>
                        <ul class="menu">
                            <li><a href="">오늘의 스터디</a></li>
                            <li><a href="">오늘의 카페</a></li>
                            <li><a href="">내 카페</a></li>
                            <li><a href="">FAQ</a></li>
                            <li><a href="">Oh!스카 소개</a></li>
                        </ul>
                    </section>
                    <section>
                        <aside class="aside isLoggedIn">
                            <ul>
                                <li>
                                    <button type="button" class="searchButton" aria-label="Search" aria-haspopup="true" aria-expanded="false" data-attribute-id="gnb" data-gnb-kind="search"><svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="18" height="18" viewBox="0 0 18 18"><defs><path id="qt2dnsql4a" d="M15.727 17.273a.563.563 0 10.796-.796l-4.875-4.875-.19-.165a.563.563 0 00-.764.028 5.063 5.063 0 111.261-2.068.562.562 0 101.073.338 6.188 6.188 0 10-1.943 2.894l4.642 4.644z"></path></defs><g fill="none" fill-rule="evenodd"><use fill="#333" fill-rule="nonzero" stroke="#333" stroke-width=".3" xlink:href="#qt2dnsql4a"></use></g></svg></button>
                                </li>
                                <li class="aside-li">
                                    <button type="button" class="notiButton" aria-label="Notification Center" aria-haspopup="true" aria-expanded="false" data-attribute-id="gnb" data-gnb-kind="bell"><svg xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink" width="18" height="18" viewBox="0 0 18 18"><defs><path id="bpnpn3yn0a" d="M7.554 14.813h3.183a1.689 1.689 0 01-3.183 0zm1.592 2.25a2.813 2.813 0 002.812-2.813.563.563 0 00-.562-.563h-7.5c-.31 0-.541-.014-.699-.04.018-.036.04-.077.066-.123.036-.065.354-.605.46-.8.477-.875.735-1.676.735-2.599V6.75c0-2.656 2.057-4.688 4.688-4.688 2.63 0 4.687 2.032 4.687 4.688v3.375c0 .923.258 1.724.736 2.6.106.194.424.734.46.799.026.046.047.087.065.123-.157.026-.389.04-.698.04a.564.564 0 000 1.126c1.263 0 1.896-.221 1.896-1.002 0-.26-.092-.494-.28-.833-.045-.083-.361-.619-.456-.792-.395-.724-.598-1.355-.598-2.061V6.75c0-3.28-2.563-5.813-5.812-5.813S3.333 3.47 3.333 6.75v3.375c0 .706-.203 1.337-.598 2.06-.094.174-.41.71-.456.793-.188.339-.279.572-.279.833 0 .78.632 1.002 1.896 1.002H6.39a2.813 2.813 0 002.756 2.25z"></path></defs><g fill="none" fill-rule="evenodd"><g transform="translate(-1079 -16) translate(224 7) translate(855 9)"><mask id="1dencd96ob" fill="#fff"><use xlink:href="#bpnpn3yn0a"></use></mask><use fill-rule="nonzero" stroke="currentColor" stroke-width=".3" xlink:href="#bpnpn3yn0a"></use><g fill="currentColor" mask="url(#1dencd96ob)"><path d="M0 0H18V18H0z"></path></g></g></g></svg></button>
                                    <span class="aside-li-alarm" style="background-color: rgb(51, 102, 255); width: 13px; height: 13px;"><svg width="5" height="5" viewBox="0 0 6 6"><g fill="#fff" fill-rule="nonzero"><path d="M6.647 11L6.647 7.259 6.688 7.259 9.158 11 11 11 11 5 9.353 5 9.353 8.357 9.322 8.357 7.089 5 5 5 5 11z" transform="translate(-123 -375) translate(20 365) translate(98 5)"></path></g></svg></span>
                                </li>
                                <li class="profile moreVisible">
                                    <button type="button" aria-haspopup="true" aria-expanded="false" data-attribute-id="gnb" data-gnb-kind="photo" class="profileButton" aria-label="avatarButton" data-badge="true">
                                        <div class="avatarBorder">
                                            <div class="avatarImage" style="background-image:url(https://static.wanted.co.kr/oneid-user/profile_default.png), url(https://static.wanted.co.kr/images/profile_default.png)">
                                            </div>
                                        </div>
                                    </button>
                                </li>
                                <li class="leftDivision mdMoreVisible" data-attribute-id="gnb" data-gnb-kind="forEmployers">
                                    <a class="dashboardButton" href="">기업 서비스</a>
                                </li>
                            </ul>
                        </aside>
                    </section>    
                </nav>
            </div>
        </div>
        <div class="padding"></div>
    </header>  

    <main>
        <div class="pay-service pay-service-container">
            <h1 class="pay-content1 pay-content-title">
                포인트 서비스
            </h1>
            <p class="pay-content2 pay-content-additional">
                "카페 홍보"를 위해서는 포인트가 필요합니다. 
                <br>
                홍보를 위한 포인트를 구매해 보세요. 
                <br>
                <em>카페 사장님들만 이용 가능한 서비스입니다.</em>
            </p>
            
            <!-- 포인트 보여주는 부분 -->
            <div class="content-wrapper">   
                <div class="coupon-wrapper"> 
                         <!-- 구독 서비스별 결제 포인트-->
                    <section class="coupon-list-wrapper">                         
                            <!-- 쿠폰 리스트 -->
                        <ul class="coupon-list">
                            <li class="coupon-list-element">
                                  <section class="coupon-sale">
                                     <h2>
                                        7일 
                                        홍보권
                                     </h2>
                                  </section>
                                  
                                  
                                  <h2 class="coupon-benefit">1,000 point</h2>
                                
                                  <p class="coupon-benefit-detail">현재 소유하고 계신 포인트에서 1,000포인트가 차감됩니다.</p>
                                  
                                  <section class="coupon-dday-detail-wrapper">
                                     <div class="coupon-dday-detail">
                                       쿠폰 구매 후 7일 동안 카페 홍보가 가능합니다.
                                     </div>
                                  </section>
                                  
                                  <div class="coupon-benefit-category-wrapper">
                                     <div class="coupon-benefit-category">
                                        즉시 사용 가능
                                     </div>
                                  </div>
                            </li>
                               
                            <li class="coupon-list-element">
                                  <section class="coupon-sale">
                                     <h2>
                                        30일 
                                        홍보권
                                     </h2>
                                  </section>
                                  
                                  
                                  <h2 class="coupon-benefit">3,000 point</h2>
                                
                                  <p class="coupon-benefit-detail">현재 소유하고 계신 포인트에서 3,000포인트가 차감됩니다.</p>
                                  
                                  <section class="coupon-dday-detail-wrapper">
                                     <div class="coupon-dday-detail">
                                       쿠폰 구매 후 30일 동안 카페 홍보가 가능합니다.
                                     </div>
                                  </section>
                                  
                                  <div class="coupon-benefit-category-wrapper">
                                     <div class="coupon-benefit-category">
                                        즉시 사용 가능
                                     </div>
                                  </div>
                            </li>
                               
                               <li class="coupon-list-element">
                                  <section class="coupon-sale">
                                     <h2>
                                        90일 
                                        홍보권
                                     </h2>
                                  </section>
                                  
                                  
                                  <h2 class="coupon-benefit">8,500 point</h2>
                                
                                  <p class="coupon-benefit-detail">현재 소유하고 계신 포인트에서 8,500포인트가 차감됩니다.</p>
                                  
                                  <section class="coupon-dday-detail-wrapper">
                                     <div class="coupon-dday-detail">
                                       쿠폰 구매 후 90일 동안 카페 홍보가 가능합니다.
                                     </div>
                                  </section>
                                  
                                  <div class="coupon-benefit-category-wrapper">
                                     <div class="coupon-benefit-category">
                                        즉시 사용 가능
                                     </div>
                                  </div>
                            </li>
                               
                               <li class="coupon-list-element">
                                  <section class="coupon-sale">
                                     <h2>
                                        180일 
                                        홍보권
                                     </h2>
                                  </section>
                                  
                                  
                                  <h2 class="coupon-benefit">15,000 point</h2>
                                
                                  <p class="coupon-benefit-detail">현재 소유하고 계신 포인트에서 15,000포인트가 차감됩니다.</p>
                                  
                                  <section class="coupon-dday-detail-wrapper">
                                     <div class="coupon-dday-detail">
                                       쿠폰 구매 후 180일 동안 카페 홍보가 가능합니다.
                                     </div>
                                  </section>
                                  
                                  <div class="coupon-benefit-category-wrapper">
                                     <div class="coupon-benefit-category">
                                        즉시 사용 가능
                                     </div>
                                  </div>
                            </li>
                        </ul>
                    </section>
                </div>
                      
                <section class="notice">
                     <h2 class="notice-title">꼭 확인해 주세요!</h2>
                     <ul class="notice-list-wrapper">
                        <li class="notice-list">
                           · 홍보권이 만료된 이후에는, 카페 홍보글이 내려가게 됩니다.
                        </li>
                        <li class="notice-list">
                           · 홍보를 연장하고 싶다면, 새로운 홍보권을 구매해주세요.
                        </li>
                        <li class="notice-list">
                           · 홍보권을 사용 후 다른 홍보권으로의 변경은 불가합니다.
                        </li>
                        <li class="notice-list">
                          · 홍보권을 적용하신 주문 건이 유효기간 이후 취소되는 경우, 복구가 불가합니다.
                        </li>
                    </ul>
                </section>
            </div>  
        </div>  
<!-- 결제 모달창 숨기기 -->


<div class="modal hidden">
    <div class="modalBox">
                        <div class="modal_title_area">
                            <div class="modal_white_space"></div>
                <div class="modal_title_box">
                    <p data-testid="Typography" color="var(--theme-palette-colors-black-100)" class="modal_title">
                        <span data-testid="Typography" color="var(--theme-palette-colors-black-100)" class="modal_title_text">7일 홍보권 구매</span>
                    </p>
                </div>
                <div class="exit_svg_area">         
        <button type="button" class="closeBtn">
        <span class="svg_wrapper">
            <svg viewBox="0 0 24 24" class="exit_svg">
                <path d="M17.97 19.03a.749.749 0 1 0 1.06-1.06l-6.5-6.5a.749.749 0 0 0-1.06 0l-6.5 6.5a.749.749 0 1 0 1.06 1.06L12 13.06l5.97 5.97zM12 10.94 6.03 4.97a.749.749 0 1 0-1.06 1.06l6.5 6.5a.749.749 0 0 0 1.06 0l6.5-6.5a.749.749 0 1 0-1.06-1.06L12 10.94z"></path>
            </svg>
        </span>
    </button>
                </div>
            </div>
           <div class="modal_content_area">
                <form>
                    <div class="modal_input_area">
                        <div id="modal_point_title">결제 예정 point</div>
                    	<div class="modal_point_text1">현재 보유하고 있는 point</div>
                        <span class="point_price">+ 5000point</span>
                    	<div class="modal_point_text1">사용될 예정인 point</div>
                        <span class="point_price" style="color:red">- 1000point</span>
                        <hr style="border:solid 1px #dad8d8;">
                        <div class="modal_point_text2">결제 후 point</div>
                        <span class="point_price">+ 4000point</span>
                    </div>
                    <div class="modal_button_area">
                        <button type="submit" data-testid="Button" class="submit_button">
                            <span color="var(--theme-palette-colors-black-100)" class="button_text">결제</span>
                        </button>
                        <button type="button" data-testid="Button" class="cancel_button">
                            <span color="var(--theme-palette-colors-black-100)" class="button_text ">취소</span>
                        </button>
                    </div>
                </form>
            </div>
                
            </div>
        </div>
    </main>
    
    <footer class="cafe_footer">
        <div class="footer_content container" style="height:213.1px;">
            <div class="row" style="text-align: center; height: 64.6px;">
                <div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_logo" style="text-align: left;">
                    <a href="">
                    <img src="${pageContext.request.contextPath}/static/allimages/logo.jpg" margin-top="21px" width="90px" alt="오스카 로고">
                    </a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_1">
                    <a href="">
                        <h3 style="color: #666666 !important; font-size: 16px; margin-top: 25px; font-weight: 400;">Oh!스카 소개</h3>
                    </a>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_2">
                    <a href="">
                        <h3 style="color: #666666 !important; font-size: 16px; margin-top: 25px; font-weight: 400;">오늘의 스터디</h3>
                    </a>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_3">
                    <a href="">
                        <h3 style="color: #666666 !important; font-size: 16px; margin-top: 25px; font-weight: 400;">오늘의 카페</h3>
                    </a>
                </div>
            </div>

            <aside class="footer_content text-center" style="padding: 15px 0;">
                <div class="container" style="padding-left: 0px; padding-right: 0px; height: 58.5px;">
                    <p class="footer_info" style="color:#666666 !important; font-size: 13px;">
                        (주)원티드랩 (대표이사:이복기) | 서울특별시 송파구 올림픽로 300 롯데월드타워 35층 | 통신판매번호 : 2020-서울송파-3147호
                    </p>
                    <p class="footer_info" style="color:#666666 !important; font-size: 13px;">           
                        유료직업소개사업등록번호 : (국내) 제2020-3230259-14-5-00018호 | 사업자등록번호 : 299-86-00021 |  02-539-7118
                    </p>
                    <p class="footer_info" style="color:#666666 !important; font-size: 13px;">           
                        © Wantedlab, Inc
                    </p>
                </div>
            </aside>
        </div>
    </footer>
</body>
<script src="${pageContext.request.contextPath}/static/point/js/modal.js">
</script>
</html>