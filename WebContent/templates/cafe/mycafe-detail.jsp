<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/allimages/all-image/favicon.jpg">
<link rel="preload" as="style" crossorigin="anonymous"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/cafe/mycafe-detail.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/cafe/mycafe-detail-medias-under1200px.css" />
<title>카페 상세보기</title>
</head>
<body>
	<div id="mycafe-detail">
		<div role="presentation" class="navbar"
			style="position: fixed; padding-right: initial">
			<div class="mainbar isLoggedIn" role="presentation">
				<nav class="mainbar-nav">
					<div class="mainbar-nav-top">
						<div class="mainbar-nav-logo">
							<a href="/jobsfeed" class="mainbar-logo-plus"
								aria-label="jobsfeed link" data-attribute-id="gnb"
								data-gnb-kind="jobsfeed"><img src="${pageContext.request.contextPath}/static/allimages/all-image/logo.jpg"
								alt="logo" width="74" height="17" /></a>
						</div>
						<button id="SignupBtn" class="xsSignUpButton isLoggedIn"
							type="button" data-attribute-id="gnb" data-gnb-kind="signupLogin">
							회원가입하기</button>
					</div>
					<ul class="menu">
						<li class=""><a href="" class="">Oh!스카 소개</a></li>
						<li class=""><a href="" class="">FAQ</a></li>
						<li class="smMoreVisible"><a href="" class="">오늘의 스터디</a>
						</li>
						<li class="smMoreVisible"><a href="/community" class="">오늘의 카페</a>
						</li>
						<li class="smMoreVisible"><a href="/aiscore/resume" class="">내 카페</a></li>
					</ul>
					<aside class="aside isLoggedIn">
						<ul>
							<li class="mdMoreVisible profileBox aside_hasNewMywantedAlarm">
								<button type="button" aria-haspopup="true" aria-expanded="false"
									data-attribute-id="gnb" data-gnb-kind="photo"
									class="profileButton" aria-label="avatarButton"
									data-badge="true">
									<div class="avatarBorder">
										<div class="avatarImage"
											style="background-image: url(https://static.wanted.co.kr/oneid-user/profile_default.png), url(https://static.wanted.co.kr/images/profile_default.png);"></div>
									</div>
								</button> <span class="Badge_Badge__BJTzL"
								style="background-color: rgb(51, 102, 255); width: 13px; height: 13px"><svg
										width="5" height="5" viewBox="0 0 6 6">
                      <g fill="#fff" fill-rule="nonzero">
                        <path
											d="M6.647 11L6.647 7.259 6.688 7.259 9.158 11 11 11 11 5 9.353 5 9.353 8.357 9.322 8.357 7.089 5 5 5 5 11z"
											transform="translate(-123 -375) translate(20 365) translate(98 5)"></path>
                      </g></svg></span>
							</li>
						</ul>
						<div class="Aside_visibleMenu__Dki9n"></div>
					</aside>
				</nav>
			</div>
		</div>
		<div class="Padding_padding"></div>
		<div class="cafeDetail-cn">
			<div class="cafeDetail-contentWrapper">
				<div class="cafeDetail-relativeWrapper">
					<div class="cafeContent-className">
						<section class="cafeImage-cafeImage">
							<button type="button"
								class="cafeImage-cafeImage-arrow cafeImage-cafeImage-arrow-left">
								<svg width="24" height="24" viewBox="0 0 12 12">
                    <path fill="#b5b5b5"
										d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path>
                  </svg>
							</button>
							<button type="button"
								class="cafeImage-cafeImage-arrow cafeImage-cafeImage-arrow-right">
								<svg width="24" height="24" viewBox="0 0 12 12">
                    <path fill="#b5b5b5"
										d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path>
                  </svg>
							</button>
							<div class="cafeImage-cafeImage-slides">
								<div class="cafeImage-cafeImage-slide">
									<img
										src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F32078%2Fwul4xttyqdc8qqpf__1080_790.jpg&amp;w=1000&amp;q=75"
										alt="나우콤 글로벌 서비스(Nowcom Global Service – Korea LLC) - Jr. Database Engineer" />
								</div>
								<div class="cafeImage-cafeImage-slide">
									<img
										src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F32078%2Fxh64lbhl4pro3joc__1080_790.jpg&amp;w=1000&amp;q=75"
										alt="나우콤 글로벌 서비스(Nowcom Global Service – Korea LLC) - Jr. Database Engineer" />
								</div>
								<div class="cafeImage-cafeImage-slide">
									<img
										src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F32078%2Fjf32mezjhepgdvlo__1080_790.jpg&amp;w=1000&amp;q=75"
										alt="나우콤 글로벌 서비스(Nowcom Global Service – Korea LLC) - Jr. Database Engineer" />
								</div>
								<div class="cafeImage-cafeImage-slide">
									<img
										src="https://image.wanted.co.kr/optimize?src=https%3A%2F%2Fstatic.wanted.co.kr%2Fimages%2Fcompany%2F32078%2Fhhb034qoyk7sorkl__1080_790.jpg&amp;w=1000&amp;q=75"
										alt="나우콤 글로벌 서비스(Nowcom Global Service – Korea LLC) - Jr. Database Engineer" />
								</div>
							</div>
						</section>
						<section class="cafeHeader-className">
							<h2>${contents.cafeTitle}</h2>
							<div>
								<h6 style="max-width: calc(100% - 87px)">
									${cafeInfo.cafeLocation }
								</h6>
							</div>
						</section>
						<div class="cafeContent-appliedLink"></div>
						<p style="font-size:15px">
							${contents.cafeContents}
						</p>
						<section class="cafePlace-className">
								<div>
									<span class="header">영업 시간</span><span class="body">${contents.cafeOpenTime} ~ ${contents.cafeEndTime}</span>
								</div>
								<div>
									<span class="header">근무지역</span><span class="body">재택근무</span>
								</div>
								<div id="map"
									style="width: 700px; height: 254px; background-color: gray;"></div>
							</section>
					</div>
					<aside class="cafe-owner" style="top: 70px">
						<div class="cafe-owner-container">
							<header class="cafe-owner-header">
								<h2>수정하기</h2>
							</header>
							<div class="cafe-owner-body scroll-lock cafe-owner-small"
								id="MODAL_BODY">
								<div class="cafe-owner-isfit">
									<p>주요 알림사항 한 번 더 확인해 주세요.</p>
									<p>카페 포스팅 수정은 카페 사장님만 가능합니다!</p>
								</div>
								<div class="cafe-owner-bodyContent">
									<h3 class="Information-title">사장님 정보</h3>
									<div class="information">
										<label for="name" class="Input-cn"><h4>닉네임</h4> 
										<input disabled type="text" name="name" value="${owner.memberName}" /></label> <label for="email"
											class="Input-cn"><h4>이메일</h4> <input disabled=""
											type="text" name="email" value="${cafeInfo.cafeContactEmail}" /></label>
										<div class="Information-mobileInput">
											<h4>대표 번호</h4>
											<button type="button" class="hasMobile">
												${cafeInfo.cafeContactPhonenumber}
												<svg width="10" height="10" viewBox="0 0 12 12">
                            <path fill="currentColor"
														d="M3.345 9.72a.75.75 0 0 0 1.06 1.06l4.25-4.25a.75.75 0 0 0 0-1.06l-4.25-4.25a.75.75 0 0 0-1.06 1.06L7.065 6l-3.72 3.72z"></path>
                        						  </svg>
											</button>
										</div>
									</div>
									<%-- 
										<div class="CrossBorder_cn">
											<div class="CrossBorder-domestic">
												<p>한줄 글 작성.</p>
											</div>
										</div>
									
									--%>
								</div>
							</div>
							<footer class="cafe-woner-footer">
								<button type="button" disabled="">수정하기</button>
							</footer>
						</div>
					</aside>
				</div>
			</div>
			<div class="mycafeDetail-footer">
				<footer class="cafe_footer">
					<div class="footer_content container" style="height: 213.1px;">
						<div class="row" style="text-align: center; height: 64.6px;">
							<div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_logo"
								style="text-align: left;">
								<a href=""> <img src="${pageContext.request.contextPath}/static/allimages/all-image/logo.jpg"
									 width="125px" height="27px" alt="로고">
								</a>
							</div>
							<div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_1">
								<a href="">
									<h3
										style="color: #666666 !important; font-size: 16px; margin-top: 25px; font-weight: 400;">Oh!스카
										소개</h3>
								</a>
							</div>

							<div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_2">
								<a href="">
									<h3
										style="color: #666666 !important; font-size: 16px; margin-top: 25px; font-weight: 400;">오늘의
										스터디</h3>
								</a>
							</div>

							<div class="col-md-3 col-sm-3 col-xs-6" id="footer_content_3">
								<a href="">
									<h3
										style="color: #666666 !important; font-size: 16px; margin-top: 25px; font-weight: 400;">오늘의
										카페</h3>
								</a>
							</div>
						</div>

						<aside class="footer_content text-center" style="padding: 15px 0;">
							<div class="container"
								style="padding-left: 0px; padding-right: 0px; height: 58.5px;">
								<p class="footer_info"
									style="color: #666666 !important; font-size: 13px;">
									(주)원티드랩 (대표이사:이복기) | 서울특별시 송파구 올림픽로 300 롯데월드타워 35층 | 통신판매번호 :
									2020-서울송파-3147호</p>
								<p class="footer_info"
									style="color: #666666 !important; font-size: 13px;">
									유료직업소개사업등록번호 : (국내) 제2020-3230259-14-5-00018호 | 사업자등록번호 :
									299-86-00021 | 02-539-7118</p>
								<p class="footer_info"
									style="color: #666666 !important; font-size: 13px;">©
									Wantedlab, Inc</p>
							</div>
						</aside>
					</div>
				</footer>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=f84848dfe600d3519b76d49148f91c84&libraries=services"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/cafe/mycafe-detail.js"></script>
<script src="${pageContext.request.contextPath}/static/js/cafe/mycafe-detail-kakaomap.js"></script>
<script type="text/javascript">
	console.log("${contents}")
	console.log("${images}")
	console.log("${cafeInfo}")
	console.log("${owner}")
</script>
</html>
