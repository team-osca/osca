<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>passwordReset</title>
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css" as="style">
    <link rel="preload" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css" as="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-std-dynamic-subset.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard-dynamic-subset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/login/css/passwordReset.css">
</head>
<body style="overflow: unset;">
    <div id="resetPassword">
     <!-- 전체 페이지 영역 -->
        <div class="area">
            <!-- 비밀번호 재설정 박스 영역 -->
            <div class="boxarea">
                <!-- 비밀번호 재설정 박스 -->
                <div class="box">
                    <!-- "비밀번호 재설정" 타이틀 -->
                    <div class="title-wrap">
                        <!-- 왼쪽 공백 -->
                        <div class="blank-left"></div>
                        <div class="title">
                            <p color="var(--theme-palette-colors-black-100)" class="title-content">비밀번호 재설정</p>
                        </div>
                        <!-- 오른쪽 공백 -->
                        <div class="blank-right"></div>
                    </div>
                    <!-- 박스 내용 영역 -->
                    <div class="content">
                        <p color="var(--theme-palette-colors-black-100)" class="sent-email">이메일을 전송했어요.</p>
                        <p color="var(--theme-palette-colors-gray-600)" class="message">비밀번호 재설정을 위한 이메일을 전송했어요.<br>이메일이 오지 않았다면, 이메일이 맞는지 확인해주세요.</p>
                        <!-- 이메일 -->
                        <div class="email-container">
                            <p color="var(--theme-palette-colors-black-100)" class="email">alainakim23@gmail.com</p>
                        </div>
                        <!-- 메인으로 돌아가기 -->
                        <button type="submit" class="back-to-main">
                            <span color="var(--theme-palette-colors-black-100)" class="go-back">메인으로 돌아가기</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>