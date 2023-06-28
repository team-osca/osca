<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preload" as="style" crossorigin="anonymous"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css" />
<link rel="stylesheet" href="mycafe-header.css" />
<link rel="stylesheet" href="mycafe-post-main.css" />
<title>카페 등록 페이지</title>
</head>
<body>
	<div class="__next">
		<div role="presentation" class="navbar"
			style="position: fixed; padding-right: initial">
			<div class="mainbar isLoggedIn" role="presentation">
				<nav class="mainbar-nav">
					<div class="mainbar-nav-top">
						<div class="mainbar-nav-logo">
							<a href="/jobsfeed" class="mainbar-logo-plus"
								aria-label="jobsfeed link"><img src="logo/logo.png"
								alt="logo" width="74" height="17" /></a>
						</div>
						<button id="SignupBtn" class="xsSignUpButton isLoggedIn"
							type="button">회원가입하기</button>
					</div>
					<ul class="menu">
						<li class=""><a href="/wdlist" class="">스터디</a></li>
						<li class=""><a href="/events" class="">카페</a></li>
						<li class="smMoreVisible"><a href="/cv/list" class="">내카페</a>
						</li>
						<li class="smMoreVisible"><a href="/community" class="">FAQ</a>
						</li>
						<li class="smMoreVisible"><a href="/aiscore/resume" class="">사이트
								소개</a></li>
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
		<main class="main">
			<div class="post-wrapper">
				<div class="mycafeDetail-poastDetail-body">
					<div class="mycafeDetail-poastDetail-body-basic">
						<section class="banner-padding-top"></section>
						<div
							class="mycafeDetail-poastDetail-body-title mycafeDetail-poastDetail-body-title-banner">
							<div>
								<input
									class="mycafeDetail-poastDetail-input post-input title basic"
									type="text" maxlength="100" placeholder="이력서 제목(필수)"
									name="title" value="김동엽 1" />
							</div>
						</div>
						<div>
							<input class="mycafeDetail-poastDetail-input post-input name"
								type="text" maxlength="100" placeholder="이름(필수)" name="name"
								value="김동엽" />
						</div>
						<div>
							<input class="mycafeDetail-poastDetail-input post-input email"
								type="email" maxlength="120" placeholder="이메일(필수)" name="email"
								value="404notfound.kdy@gmail.com" />
						</div>
						<div>
							<input class="mycafeDetail-poastDetail-input post-input mobile"
								type="tel" maxlength="200"
								placeholder="연락처(필수) ex) 010-0000-0000" name="mobile"
								value="+821076501147" />
						</div>
					</div>
					<div class="mycafePostDetail-mycafePostDetail-body-about">
						<div class="mycafePostDetail-mycafePostDetail-body-about-header">간단
							소개글</div>
						<p class="mycafePostDetail-mycafePostDetail-body-guode">
							• 최대 4000글자 내에서 카페를 홍보할 수 있습니다.<br />• 스터디가 카페를 이용 할 경우의 규칙을
							간략하게 적여주세요!
						</p>
						<div>
							<div class="DynamicTextarea-Textarea">
								<textarea
									class="mycafeDetail-poastDetail-input post-input about"
									maxlength="4000" placeholder="내 카페를 홍보하세요! (최대 4000글자)"
									field="about"
									style="height: 594px; color: rgb(59, 61, 64); margin: 30px 0px 3px"></textarea>
								<textarea class="DynamicTextarea-Textarea-clone" readonly=""
									style="top: 0px; left: 0px; width: 1060px; padding: 0px; font-size: 16px; font-weight: 400; position: absolute; visibility: hidden; z-index: -9999; height: 0px; background: transparent;"></textarea>
							</div>
						</div>
					</div>
					<div class="mycafeFooter-mycafePostFooter-Fixed">
						<div class="mycafeFooter-mycafePostFooter-Footer">
							<div class="mycafeFooter-mycafePostFooter-Footer-Progress">
								<div class="ProgressBar-ProgressBar">
									<div class="ProgressBar-ProgressBar-graph">
										<div class="ProgressBar-ProgressBar-graph-top">
											<div class="ProgressBar-ProgressBar-graph-top-text"
												style="display: none; color: rgb(51, 102, 255); transform: translateX(80%);">
												0</div>
										</div>
										<div class="ProgressBar-ProgressBar-graph-bar">
											<div class="ProgressBar-ProgressBar-graph-bar-progress"
												style="transform: translateX(0%); background-color: rgb(51, 102, 255)"></div>
											<div class="ProgressBar-ProgressBar-graph-bar-pin"
												style="left: 100%"></div>
										</div>
										<div class="ProgressBar-ProgressBar-graph-bottom">
											<div class="ProgressBar-ProgressBar-graph-bottom-zero">0</div>
											<div class="ProgressBar-ProgressBar-graph-bottom-text"
												style="color: rgb(51, 102, 255); transform: translateX(80%)">
												0</div>
										</div>
									</div>
									<div class="ProgressBar-ProgressBar-emoji">👍</div>
									<div class="ProgressBar-ProgressBar-description">
										<div class="ProgressBar-ProgressBar-description-text">
											훌륭한 카페군요!</div>
									</div>
								</div>
							</div>
							<div class="mycafeFooter-mycafePostFooter-Footer-btn">
								<button
									class="Button-Button-root Button-Button-outlined Button-Button-outlinedPrimary Button-Button-outlinedSizeLarge mycafeFooter-mycafePostFooter-Footer-btns-btn mycafePostFooter-temp">
									<span class="Button-Button-label">수정 하기</span><span
										class="Button-Button-interaction"></span>
								</button>
								<button
									class="Button-Button-root Button-Button-contained Button-Button-containedPrimary Button-Button-containedSizeLarge mycafeFooter-mycafePostFooter-Footer-btns-btn">
									<span class="Button-Button-label">작성 완료</span><span
										class="Button-Button-interaction"></span>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="mycafe-post.js"></script>
</html>