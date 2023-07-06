<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cafe 목록 보기</title>
    <link rel="stylesheet" href="cafe-all.css">
    <link rel="stylesheet" href="main-cafe-header.css">
    <link rel="stylesheet" href="cafe-main-banner.css">
    <link rel="stylesheet" href="cafe-main-list.css">
    <link rel="stylesheet" href="cafe-footer.css"> 
    <link rel="preload" as="style" crossorigin="anonymous"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
	<link rel="icon" type="image/x-icon" href="../allimages/favicon.jpg">
</head>
</head>

<body>
    <!-- 여기에서 쓰이는 svg는?
    ★ Scalable Vector Graphics로 확장 가능한 벡터 그래픽
    ★ 크기를 확대하거나 축소할 수 있는, 수학적 함수를 이용해 도형이나 선을 그려서 표현한 그래픽
    ★ jpg, png 파일에 비해서 선명도가 좋음
    -->
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
                                        alt="hamberger menu" height="14" style="width:17px;height:14px;object-fit:contain">
                                </button>
                                <a href="" class="main-bar-nav-top-logo-a" aria-label="jobsfeed link" data-attribute-id="gnb"
                                    data-gnb-kind="jobsfeed">
                                    <img alt="logo" src="../allimages/logo.jpg" style="width: 74px; height: 21px;"/>
                                </a>
                            </div>
                        </div>
                    </section>
                    <section>
                        <ul class="menu">
                            <li><a href="">오!스카소개</a></li>
                            <li><a href="">FAQ</a></li>
                            <li><a href="">오늘의 스터디</a></li>
                            <li><a href="">오늘의 카페</a></li>
                            <li><a href="">내 카페</a></li>
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
        <div class="cafe-list">
            <!-- 배너 부분 section -->
            <section>
                <div class="cafe-banner">
                    <div class="slick-slider slick-initialized">
                        <div class="image">
                        	<img alt="banner-img" src="images/cafe-banner01.png">
                        	<img alt="banner-img" src="images/cafe-banner02.png">
                        	<img alt="banner-img" src="images/cafe-banner03.png">
                        </div>
                        <button type="button" class="banner-arrow banner-prevArrow" aria-label="previous button">
                            <span class="arrow-SvgIcon">
                                <svg class="SvgIcon" viewBox="0 0 18 18">
                                    <path d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z">
                                    </path>
                                </svg>
                            </span>
                        </button>
                        <button type="button" class="banner-arrow banner-nextArrow" aria-label="previous button">
                            <span class="arrow-SvgIcon">
                                <svg class="SvgIcon" viewBox="0 0 18 18">
                                    <path d="m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z">
                                    </path>
                                </svg>
                            </span>
                        </button>
                    </div>
                </div>
            </section>
            <!-- cafe-list 뿌려지는 부분 section -->
            <section>
                <div class="cafe-list-body" style="padding-top: 59px;">
                    <h1 class="header-title" style="font-size: 22px; margin: 0 229.6px;">
                        다양한 지역에서 오늘의 카페를 만나보세요!
                    </h1>
                    <div class="header-title-edge" style="height:1px;width:1519.2px;color:white;"></div>
                    <div class="isLoggedIn filter-box filter-header cafe-list-filter-header">
                        <div class="region-filter-container">
                            <div class="interestTagSlide categoryList">
                                <div class="scrollsnap scrollsnap-hidden regionTagSlide_width">
                                    <div class="scrollsnap-hidden scrollsnap2 scrollsnap3 scrollsnap4 tagSlide-content-interval">
                                           <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">전체</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">서울</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">경기</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">인천</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">대전</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">대구</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">부산</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">광주</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">울산</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">강원</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">전남</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">전북</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">경남</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">경북</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">충남</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">충북</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                        <button class="button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                                            <span class="region-button-contentButton">제주</span>
                                            <span class="region-button-interaction"></span>
                                        </button>
                                    </div>
                                    <div class="tagslide-arrow tagslide-rightarrow tagslide-arrow-visible">
                                        <button type="button">
                                            <span class="arrow-SvgIcon">
                                                <svg class="SvgIcon" viewBox="0 0 18 18">
                                                    <path d="m11.955 9-5.978 5.977a.563.563 0 0 0 .796.796l6.375-6.375a.563.563 0 0 0 0-.796L6.773 2.227a.562.562 0 1 0-.796.796L11.955 9z">                                                    </path>
                                                </svg>
                                            </span>
                                        </button>
                                    </div>
                                    <div class="tagslide-arrow tagslide-lefttarrow">
                                        <button type="button">
                                            <span class="arrow-SvgIcon">
                                                <svg class="SvgIcon" viewBox="0 0 18 18">
                                                    <path d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z">                                                    </path>
                                                </svg>
                                            </span>
                                        </button>
                                    </div>
                                    <div class="tagslide-arrow tagslide-leftarrow"></div>
                                </div>
                            </div>
                            <hr class="main-category-divider header-divider">
                        </div>
                        </div>
                    <ul class="all-cafe-list cafe-list-container">
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FNbNOz%2FbtqyPVj4VCV%2FnFh85UIfBBu8xDFa798Vz0%2Fimg.jpg" alt="이디야 커피">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                카공 카페
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">이디야 커피</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                    
                                </div>
                            </a>
                        </li>
                 
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="https://blog.kakaocdn.net/dn/dhLg2b/btru2wVAPyO/PjYr3kO4j6HhiJpTGNlW5K/img.png" alt="투썸플레이스">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                카공 카페
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">투썸플레이스</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                    
                                </div>
                            </a>
                        </li>
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="http://www.nscom.co.kr/upload/se2/1659074693474.jpg" style="width:" alt="컴포스 커피">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                카공 카페
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">컴포스 커피</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                   
                                </div>
                            </a>
                     	</li>
                
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2972%2F72d40af1.jpg&w=1200&q=90" alt="프리온 보딩 마케팅 챌린지 7월">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                교육
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">프리온보팅 데이터 챌린지 7월</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                
                                </div>
                            </a>
                        </li>
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2972%2F72d40af1.jpg&w=1200&q=90" alt="프리온 보딩 마케팅 챌린지 7월">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                교육
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">프리온보팅 데이터 챌린지 7월</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                
                                </div>
                            </a>
                        </li>
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2966%2Fd9bb70ee.jpg&w=1200&q=90">
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                교육
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">프리온보팅 데이터 챌린지 7월</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                    
                                </div>
                            </a>
                        </li>
                        <li class="cafe-card-container cafe-card-interaction">
                            <a href="" style="--base-font-size: 10;">
                                <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
                                    <img class="cafe-image cafe-image-cover" src=https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fevents%2F2973%2F7b64995c.jpg&w=1200&q=90>
                                </div>
                                <div class="section section-column">
                                    <div class="BadgeList">
                                        <span class="badge-root badge-outline badge-size">
                                            <span class="badge-label badge-label-responsive">
                                                교육
                                            </span>
                                        </span>
                                    </div>
                                    <p class="title title-responsive">프리온보팅 데이터 챌린지 7월</p>
                                </div>
                                <div class="additional-section additional-section-column">
                                    <span class="period period-responsive">
                                        2023.06.29(목)~2023.07.02(일)
                                    </span>
                                   
                                </div>
                            </a>
                        </li>
                  
                  
                    </ul>
                    
                </div>
            </section>

            <section>
                <footer class="cafe_footer">
                    <div class="footer_content container" style="height:213.1px;">
                        <div class="row" style="text-align: center; height: 64.6px;">
                            <div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_logo" style="text-align: left;">
                                <a href="">
                                <img src="https://theme.zdassets.com/theme_assets/9309779/4f2fb72a20c8e2ee37a305ef38ef1d144774a8df.png" margin-top="21px" width="125px" alt="원티드 로고">
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
            </section>
        </div>
    </main>
</body>
<!-- <script src="banner.js"></script> -->
</html>