<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/findAccount/notFoundAccountBase.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/findAccount/notFoundAccount.css">
    <title>OSCA ACCOUNT</title>
  </head>
  <body>
    <div id="notFound">
      <div class="container">
        <div class="main-wrapper">
          <div class="main">
            <div class="header-wrapper">
              <div class="header">
                <button type="button" class="pre-btn">
                  <span class="pre-btn-span"
                    ><svg viewBox="0 0 18 18" class="pre-btn-img">
                      <path
                        d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z"
                      ></path></svg
                  ></span>
                </button>
              </div>
              <div class="header-text-wrapper">
                <p
                  color="var(--theme-palette-colors-black-100)"
                  class="header-text"
                >
                  계정 찾기
                </p>
              </div>
              <div class="right-padding"></div>
            </div>
            <div class="main-body">
              <h1
                color="var(--theme-palette-colors-black-100)"
                class="msg1"
              >
                가입된 계정이 없어요.
              </h1>
              <h2
                color="var(--theme-palette-colors-gray-600)"
                class="msg2"
              >
                다른 전화번호로 계속해보시거나 새로 가입해보세요.
              </h2>
              <button id="go-to-main"type="button" class="go-to-login">
                <span
                  color="var(--theme-palette-colors-black-100)"
                  class="go-to-login-content"
                  >메인으로 돌아가기</span
                >
              </button>
            </div>
          </div>
        </div>
      </div>
      ;
    </div>
  </body>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script>
  	let contextPath = "${pageContext.request.contextPath}"
  </script>
  <script src="${pageContext.request.contextPath}/static/js/findAccount/find-account-result.js"></script>
</html>




