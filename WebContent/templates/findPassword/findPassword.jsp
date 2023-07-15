<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/static/allimages/all-image/favicon.jpg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/findPassword/findPassowrd-base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/findPassword/findPassword.css">
    <title>비밀번호 찾기</title>
  </head>
  <body>
    <div id="find-password">
      <div class="find-password-container">
        <div class="find-password-wrapper">
          <div class="main">
            <div class="header">
              <div class="left-padding"></div>
              <div class="title">
                <p
                  color="var(--theme-palette-colors-black-100)"
                  class="title-text"
                >
                  비밀번호 재설정
                </p>
              </div>
              <div class="right-padding"></div>
            </div>
            <div class="body">
              <p
                color="var(--theme-palette-colors-black-100)"
                class="body-content"
              >
                이메일을 전송했어요.
              </p>
              <p
                color="var(--theme-palette-colors-gray-600)"
                class="guide-msg"
              >
                비밀번호 재설정을 위한 이메일을 전송했어요. <br />이메일이 오지 않았다면, 이메일이
                맞는지 확인해주세요.
              </p>
              <div class="e-mail-wrapper">
                <p
                  color="var(--theme-palette-colors-black-100)"
                  class="e-mail"
                >
                  dongyeop1147@daum.net
                </p>
              </div>
              <button type="submit" class="goto-main">
                <span
                  color="var(--theme-palette-colors-black-100)"
                  class="css-m3uta"
                  >메인으로 돌아가기</span
                >
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
