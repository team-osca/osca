<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" type="image/x-icon" href="../../allimages/favicon.jpg">
<link rel="preload" as="style" crossorigin="anonymous"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
<link rel="stylesheet" href="mycafe-header.css" />
<link rel="stylesheet" href="mycafe-section.css" />
<title>내 카페 홍보글 관리</title>
</head>
<body>
	<div id="mycafeList">
		<div role="presentation" class="navbar"
			style="position: fixed; padding-right: initial">
			<div class="mainbar isLoggedIn" role="presentation">
				<nav class="mainbar-nav">
					<div class="mainbar-nav-top">
						<div class="mainbar-nav-logo">
							<a href="/jobsfeed" class="mainbar-logo-plus"
								aria-label="jobsfeed link"><img
								src="../../allimages/logo.jpg" alt="logo" width="74" height="17" /></a>
						</div>
						<button id="SignupBtn" class="xsSignUpButton isLoggedIn"
							type="button">회원가입하기</button>
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
									`
                    class="profileButton"
									aria-label="avatarButton">
									<div class="avatarBorder">
										<div class="avatarImage"
											style="background-image: url(https://static.wanted.co.kr/oneid-user/profile_default.png), url(https://static.wanted.co.kr/images/profile_default.png);"></div>
									</div>
								</button>
								<span class="Badge_Badge__BJTzL"
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
		<div class="Container-Profile">
			<nav role="presentation" class="Nav_Nav">
				<h2 class="Nav-Nav-title">
					<p>내 카페</p>
				</h2>
				<div align="right" style="padding-right: 50px;">
					<button
						class="Posting-Button-root Posting-Button-outlined Posting-Button-outlinedPrimary Posting-Button-outlinedSizeMedium InterestCategoryItem-InterestCategoryItem"
						style="background: #36f; color: #fff">
						<span class="Button_Button__label__1Kk0v">등록하기</span><span
							class="Button_Button__interaction__kkYaa"></span>
					</button>
				</div>
			</nav>
			<div class="Status">
				<div class="Aside-inStatus">
					<dl>
						<dt>내 카페 홍보글 괸리</dt>
						<dd>
							<ul>
								<li class="active"><a href="#" class="">전체 목록
										<div class="label_">0</div>
								</a></li>
								<li ><a href="#" class="">현재
										등록된 게시글
										<div class="label_">0</div>
								</a></li>
								<li class=""><a href="#" class="">기간
										만료된 게시글
										<div class="label_">0</div>
								</a></li>
							</ul>
						</dd>
					</dl>
				</div>
				<section>
					<div class="List-wrapper">
						<header class="Offers-header">
							<ul class="List-row">
								<li class="col col-1">카페명</li>
								<li class="col col-2">일자</li>
								<li class="col col-3">상태</li>
							</ul>
						</header>
						<div class="Offers-empty"></div>
						<ul class="Offers-content">
							<!----------------------------- 내 카페 리스트 목록  ---------------------------------------------->
							<li class="List-List-table-tr">
								<div role="presentation">
									<span class="List-List-table-td List-List-table-td-cafe-logo"><img
										src="https://static.wanted.co.kr/images/wdes/0_5.9f18933a.jpg"
										alt="cafeLogo" /></span><span
										class="List-List-table-td List-List-table-td-cafe-name">나우콤
										글로벌 서비스(Nowcom Global Service – Korea LLC)</span>
										<span
										class="List-List-table-td List-List-table-td-create-time">2023.
										6. 26</span><span
										class="List-List-table-td List-List-table-td-status">접수</span>
										<span class="List-List-table-td List-List-table-td-reward">
											<svg width="24" height="24" viewBox="0 0 24 24">
											  <path fill="currentColor" d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z"></path>
                    					    </svg>
                    					</span>
								</div>
							</li>
							<li class="List-List-table-tr">
								<div role="presentation">
									<span class="List-List-table-td List-List-table-td-cafe-logo"><img
										src="https://static.wanted.co.kr/images/wdes/0_5.9f18933a.jpg"
										alt="cafeLogo" /></span><span
										class="List-List-table-td List-List-table-td-cafe-name">나우콤
										글로벌 서비스(Nowcom Global Service – Korea LLC)</span>
										<span
										class="List-List-table-td List-List-table-td-create-time">2023.
										6. 26</span><span
										class="List-List-table-td List-List-table-td-status">접수</span>
										<span class="List-List-table-td List-List-table-td-reward">
											<svg width="24" height="24" viewBox="0 0 24 24">
											  <path fill="currentColor" d="M12 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 12 10zm7 0a2 2 0 1 1-.001 4.001A2 2 0 0 1 19 10zM5 10a2 2 0 1 1-.001 4.001A2 2 0 0 1 5 10z"></path>
                    					    </svg>	
										</span>
								</div>
							</li>
							<li class="List-List-sensor"></li>
							<!----------------------------- 내 카페 리스트 목록  ---------------------------------------------->
						</ul>
					</div>
				</section>
				<div class="MatchUpModal-modalContainer"></div>
			</div>
		</div>
	</div>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="mycafe.js"></script>
</html>