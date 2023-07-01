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
<link rel="icon" type="image/x-icon" href="../../allimages/logo.jpg">
<title>카페 등록</title>
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
								aria-label="jobsfeed link"><img
								src="../../allimages/logo.jpg" alt="logo" width="74" height="17" /></a>
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
									class="profileButton" aria-label="avatarButton">
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
			<!---------------------------------- from 태그 시작 ------------------------------------------------>
			<form id="write" action="">
				<div class="post-wrapper">
					<div class="mycafeDetail-poastDetail-body">
						<div class="mycafeDetail-poastDetail-body-basic">
							<section class="banner-padding-top"></section>
							<div
								class="mycafeDetail-poastDetail-body-title mycafeDetail-poastDetail-body-title-banner">
								<div>
									<!------------------------------------------- 게시글 제목 시작  -------------------------------------------->
									<input
										class="mycafeDetail-poastDetail-input post-input title basic"
										type="text" maxlength="100" placeholder="게시글 제목을 적어주세요.(필수)"
										name="title" value="" />
									<!------------------------------------------- 게시글 제목 끝  -------------------------------------------->
								</div>
							</div>
							<div>
								<input class="mycafeDetail-poastDetail-input post-input name"
									type="text" maxlength="100" placeholder="카페명을 적어주세요.(필수)"
									name="name" value="" />
							</div>
							<div>
								<input class="mycafeDetail-poastDetail-input post-input email"
									type="email" maxlength="120" placeholder="카페 위치를 적어주세요(선택)"
									name="location" value="" />
							</div>
							<div>
								<input class="mycafeDetail-poastDetail-input post-input mobile"
									type="tel" maxlength="200" placeholder="태그를 ,로 나누에서서 적어주새요(선택)"
									name="tags" value="" />
							</div>
						</div>
						<div class="mycafePostDetail-mycafePostDetail-body-about">
							<div class="mycafePostDetail-mycafePostDetail-body-about-header">간단
								소개글</div>
							<p class="mycafePostDetail-mycafePostDetail-body-guode">• 최대 4000글자 내에서 카페를 홍보할 수 있습니다.<br />• 스터디가 카페를 이용 할 경우의 규칙을	간략하게 적여주세요!
							</p>
							<div>
								<div class="DynamicTextarea-Textarea">
									<!------------------------------------------------ 내 카페 소개 글 작성 시작  -------------------------------------------------->
									<textarea
										class="mycafeDetail-poastDetail-input post-input about"
										maxlength="4000" placeholder="내 카페를 홍보하세요! (최대 4000글자)"
										field="about"
										style="height: 594px; color: rgb(59, 61, 64); margin: 30px 0px 3px"></textarea>
									<textarea class="DynamicTextarea-Textarea-clone" readonly=""
										style="top: 0px; left: 0px; width: 1060px; padding: 0px; font-size: 16px; font-weight: 400; position: absolute; visibility: hidden; z-index: -9999; height: 0px; background: transparent;"></textarea>
								</div>
								<div align="right">
									<label for="img" class="label-file"> <svg
											xmlns="https://www.w3.org/2000/svg" width="24" height="24"
											viewBox="0 0 24 24" fill="none">
										<path fill-rule="evenodd" clip-rule="evenodd"
												d="M7.52489 11.47L9.9908 13.9387L15.4533 8.46998C15.7462 8.17668 16.2216 8.17668 16.5145 8.46998L22.5076 14.47C22.6481 14.6106 22.727 14.8012 22.727 15V19.0395C22.727 19.4539 22.3909 19.7897 21.9765 19.7895L1.99951 19.7763C1.58501 19.776 1.24932 19.4396 1.25 19.0251L1.273 4.99877C1.27368 4.58465 1.60987 4.24946 2.02399 4.25L22.001 4.27632C22.4163 4.27686 22.7521 4.61486 22.75 5.0302L22.727 9.4677C22.7248 9.88191 22.3873 10.216 21.9731 10.2138C21.5589 10.2117 21.2249 9.87414 21.227 9.45993L21.2461 5.77532L2.77177 5.75099L2.75123 18.2768L21.227 18.289V15.3104L15.9839 10.0613L10.5214 15.53C10.2285 15.8233 9.75313 15.8233 9.46017 15.53L6.99425 13.0613L5.52718 14.53C5.23446 14.8231 4.75959 14.8234 4.46653 14.5306C4.17346 14.2379 4.17319 13.763 4.46591 13.47L6.46361 11.47C6.75658 11.1767 7.23192 11.1767 7.52489 11.47ZM9 9.75H5C4.58579 9.75 4.25 9.41421 4.25 9C4.25 8.58579 4.58579 8.25 5 8.25H9C9.41421 8.25 9.75 8.58579 9.75 9C9.75 9.41421 9.41421 9.75 9 9.75Z"
												fill="currentColor"></path>
                        					<mask id="mask0_150_2361"
												maskUnits="userSpaceOnUse" x="1" y="4" width="22"
												height="16">
                          						<path fill-rule="evenodd"
												clip-rule="evenodd"
												d="M7.52489 11.47L9.9908 13.9387L15.4533 8.46998C15.7462 8.17668 16.2216 8.17668 16.5145 8.46998L22.5076 14.47C22.6481 14.6106 22.727 14.8012 22.727 15V19.0395C22.727 19.4539 22.3909 19.7897 21.9765 19.7895L1.99951 19.7763C1.58501 19.776 1.24932 19.4396 1.25 19.0251L1.273 4.99877C1.27368 4.58465 1.60987 4.24946 2.02399 4.25L22.001 4.27632C22.4163 4.27686 22.7521 4.61486 22.75 5.0302L22.727 9.4677C22.7248 9.88191 22.3873 10.216 21.9731 10.2138C21.5589 10.2117 21.2249 9.87414 21.227 9.45993L21.2461 5.77532L2.77177 5.75099L2.75123 18.2768L21.227 18.289V15.3104L15.9839 10.0613L10.5214 15.53C10.2285 15.8233 9.75313 15.8233 9.46017 15.53L6.99425 13.0613L5.52718 14.53C5.23446 14.8231 4.75959 14.8234 4.46653 14.5306C4.17346 14.2379 4.17319 13.763 4.46591 13.47L6.46361 11.47C6.75658 11.1767 7.23192 11.1767 7.52489 11.47ZM9 9.75H5C4.58579 9.75 4.25 9.41421 4.25 9C4.25 8.58579 4.58579 8.25 5 8.25H9C9.41421 8.25 9.75 8.58579 9.75 9C9.75 9.41421 9.41421 9.75 9 9.75Z"
												fill="white"></path>
                        					</mask>
                        <g mask="url(#mask0_150_2361)">
                          <rect width="24" height="24"
												fill="currentColor"></rect>
                        </g>
                      </svg>
									</label> <input type="file" name="images" id="img" multiple
										style="display: none" />
								</div>
								<!------------------------------------------------ 내 카페 소개 글 작성 끝  -------------------------------------------------->
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
										<span class="Button-Button-label">등록 하기</span><span
											class="Button-Button-interaction"></span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			<!---------------------------------- from 태그 끝 ------------------------------------------------>
		</main>
	</div>
</body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="mycafe-post.js"></script>
</html>