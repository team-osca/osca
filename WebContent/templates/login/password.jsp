<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>password</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login/password.css">
</head>
<body>
    <div id="login">
        <!-- 전체 페이지 영역 -->
        <div class="area">
            <!-- 로그인 박스 영역 -->
            <div class="boxarea">
                <div class="box">
                    <div class="title">
                        <div class="back">
                            <button type="button" class="go-back">
                                <span class="back-container">
                                    <svg viewBox="0 0 18 18" class="back-arrow">
                                        <path d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z"></path>
                                    </svg>
                                </span>
                            </button>
                        </div>
                        <div class="email-login">
                            <p data-test-id="Typography" color="var(--theme-palette-colors-black-100)" class="login-title">이메일로 로그인</p>
                        </div>
                        <div class="blank"></div>
                    </div>
                    <!-- 내용 입력 영역 -->
                    <div class="formbox">
                        <form>
                            <!-- 비밀번호 레이블 -->
                            <div class="password-title">
                                <label data-test-id="Typography" color="var(--theme-palette-colors-gray-600)" for="email" class="password-title-label">비밀번호</label>
                            </div>
                            <!-- 비밀번호 박스 -->
                            <div class="password-box">
                                <!-- 비밀번호 입력 -->
                                <input type="password" placeholder="비밀번호를 입력해주세요." name="password" data-testid="Input_password" class="password-input" value="">
                                <!-- 보이기 / 가리기 아이콘 -->
                                <button type="button">
                                    <span class="hide">
                                        <!-- svg 들어감 password.js -->
                                    </span>
                                </button>
                            </div>
                            <!-- 다음 버튼 -->
                            <button type="submit" data-test-id="Button" data-attribute-id="signup__email__login" class="nextBtn">
                                <span data-test-id="Typography" color="var(--theme-palette-colors-black-100)" class="next">다음</span>
                            </button>
                            <!-- 비밀번호 초기화 / 변경 -->
                            <button type="button" data-test-id="Button" class="reset">
                                <span data-test-id="Typography" color="var(--theme-palette-colors-black-100)" class="reset-password">비밀번호 초기화/변경</span>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="${pageContext.request.contextPath}/static/js/login/password.js"></script>
</html>