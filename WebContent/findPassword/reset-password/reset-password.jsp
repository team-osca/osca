<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="preload"
      href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css"
      as="style"
    />
    <link
      rel="preload"
      href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css"
      as="style"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css"
    />
    <link rel="stylesheet" href="reset-password-base.css" />
    <link rel="stylesheet" href="reset-password.css" />
    <link rel="icon" type="image/png" sizes="16x16" href="../../allimages/favicon.jpg">
    <title>비밀번호 변경</title>
  </head>
  <body>
    <div id="reset-password">
      <div class="reset-password-container">
        <div class="reset-password-wrapper">
          <div class="main">
            <div class="header">
              <div class="pre-btn-wrapper">
                <button type="button" class="pre-btn">
                  <span class="pre-btn-span"
                    ><svg viewBox="0 0 18 18" class="pre-btn-svg">
                      <path
                        d="m6.045 9 5.978-5.977a.563.563 0 1 0-.796-.796L4.852 8.602a.562.562 0 0 0 0 .796l6.375 6.375a.563.563 0 0 0 .796-.796L6.045 9z"
                      ></path></svg
                  ></span>
                </button>
              </div>
              <div class="title-wrapper">
                <p
                  color="var(--theme-palette-colors-black-100)"
                  class="title"
                >
                  비밀번호 재설정
                </p>
              </div>
              <div class="padding"></div>
            </div>
            <div class="form-wrapper">
              <form>
                <div class="new-password-wrapper">
                  <label
                    data-testid="Typography"
                    color="var(--theme-palette-colors-gray-600)"
                    class="new-password-label"
                    >새 비밀번호</label
                  >
                </div>
                <input
                  id="pw-input"
                  type="password"
                  placeholder="새 비밀번호를 입력해주세요."
                  name="password"
                  class="new-password"
                  aria-autocomplete="list"
                />
                <p id="check-pw-msg" color="var(--theme-palette-colors-red-400)" class="pw-error">올바르지 않은 비밀번호입니다.</p>
                <input
                  id="pw-input-check"
                  type="password"
                  placeholder="새 비밀번호를 다시 한번 입력해주세요."
                  name="passwordConfirm"
                  class="new-password"
                />
                <p id="not-eq-err" color="var(--theme-palette-colors-red-400)" class="pw-error">비밀번호가 서로 일치하지 않습니다.</p>
                <p
                  color="var(--theme-palette-colors-gray-600)"
                  class="guide-msg"
                >
                  영문 대소문자, 숫자, 특수문자를 3가지 이상으로 조합해 8자 이상 16자 이하로
                  입력해주세요.
                </p>
                <button type="submit" class="continue" disabled>
                  <span
                    color="var(--theme-palette-colors-black-100)"
                    class="continue-text"
                    >계속</span
                  >
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
  <script src="reset-password.js"></script>
</html>
