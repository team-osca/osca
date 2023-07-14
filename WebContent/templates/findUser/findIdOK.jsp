<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en_US">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-jp-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="preload" href=btn-span"https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-jp-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/findAccount/css/findAccountOKBase.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/findAccount/css/findAccount.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/findAccount/css/findAccountOK.css">
    <title>ID-OK</title>
  </head>
  <body style="overflow: unset">
    <div id="ID-OK">
      <div class="all-container">
        <div class="main">
          <div class="content">
            <div class="header">
              <div class="prebtn-container">
                <button type="button" class="prebtn">
                  <span class="btn-span"
                    ><svg viewBox="0 0 18 18" class="btn-svg">
                      <path
                        d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z"
                      ></path></svg
                  ></span>
                </button>
              </div>
              <div class="header-text">
                <p
                  color="var(--theme-palette-colors-black-100)"
                  class="css-1mg08ww"
                >
                  계정 찾기
                </p>
              </div>
              <div class="header-padding"></div>
            </div>
            <div class="body-content">
              <h1
                color="var(--theme-palette-colors-black-100)"
                class="body-content-text"
              >
                계정을 찾았어요.
              </h1>
              <h2
                color="var(--theme-palette-colors-gray-600)"
                class="body-guode-msg"
              >
                이 전화번호로 가입한 계정을 알려드려요.
              </h2>
              <div class="body-email-comtainer">
                <div class="body-email-comtainer-div">
                  <div class="body-email-comtainer-wrapper">
                    <div class="body-email-content">
                      <div class="body-email">
                        <span class="btn-span"
                          ><svg viewBox="0 0 13 14" class="email-reference-icon">
                            <path
                              d="M6.05471 10.2422C7.18752 10.2422 7.68752 9.46875 7.88283 9.07031H7.96096C8.07814 9.78906 8.83596 10.3047 9.85158 10.3047C11.5156 10.3125 12.7422 8.92188 12.7422 6.52344C12.75 3.13281 10.211 0.601562 6.50783 0.601562C2.84377 0.601562 0.250018 3.29688 0.25783 6.99219C0.25783 10.9297 2.57814 13.3984 6.44533 13.3984C7.47658 13.3984 8.42189 13.2578 9.24221 13.0234V11.7734C8.32814 12.0234 7.54689 12.1094 6.44533 12.1172C3.25002 12.1406 1.57033 10.0938 1.57033 6.99219C1.57814 4.14062 3.50002 1.89062 6.50783 1.88281C9.42189 1.88281 11.4453 3.74219 11.4297 6.57031C11.4219 8.08594 10.8438 9.10938 9.96096 9.10156C9.49221 9.10938 9.26564 8.82812 9.24221 8.25781V3.88281H7.88283V4.82031H7.80471C7.60939 4.42969 7.13283 3.75781 6.05471 3.75781C4.58596 3.75781 3.42189 4.9375 3.41408 6.99219C3.42189 9.03906 4.54689 10.2422 6.05471 10.2422ZM4.88283 6.97656C4.87502 5.875 5.41408 5.04688 6.39846 5.03906C7.39846 5.04688 7.90627 5.8125 7.91408 6.97656C7.90627 8.17188 7.39064 8.95312 6.39846 8.96094C5.42189 8.95312 4.87502 8.10938 4.88283 6.97656Z"
                              fill="var(--theme-palette-colors-gray-700)"
                            ></path></svg
                        ></span>
                      </div>
                    </div>
                    <p
                      color="var(--theme-palette-colors-black-100)"
                      class="email"
                    >
                      dongyeop1147@daum.net
                    </p>
                  </div>
                </div>
              </div>
              <button type="button" data-testid="Button" class="css-r47we8">
                <span
                  color="var(--theme-palette-colors-black-100)"
                  class="goto-main"
                  >메인으로 돌아가기</span
                >
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  <script src="${pageContext.request.contextPath}/static/findAccount/js/findIdOK.js"></script>
</html>
