<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/static/allimages/all-image/favicon.jpg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/findPassword/resetedPW-base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/findPassword/resetedPW.css">
    <title>비밀번호 변경완료</title>
  </head>
  <body>
    <div id="reseted">
      <div class="container">
        <div class="main">
          <div class="main-wrapper">
            <div class="header-container">
              <div class="header-padding"></div>
              <div class="header-text-wrapper">
                <p
                  color="var(--theme-palette-colors-black-100)"
                  class="header-text"
                >
                  비밀번호 재설정
                </p>
              </div>
              <div class="header-right-padding"></div>
            </div>
            <div class="body-wrapper">
              <p
                color="var(--theme-palette-colors-black-100)"
                class="body-texty"
              >
                비밀번호를 변경했어요.
              </p>
              <p
                color="var(--theme-palette-colors-gray-600)"
                class="guide-msg"
              >
                이제 아래 버튼을 눌러 로그인을 계속하세요.
              </p>
              <button type="submit" class="go-to-login">
                <span
                  color="var(--theme-palette-colors-black-100)"
                  >로그인으로 이동</span
                >
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  <script> let contextPath = "${pageContext.request.contextPath}"  </script>
  <script src="${pageContext.request.contextPath}/static/js/findPassword/resetedPW.js"></script>
</html>
