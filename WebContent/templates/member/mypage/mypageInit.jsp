<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script async="" src="https://snap.licdn.com/li.lms-analytics/insight.old.min.js"></script>
    <link rel="preconnect" href="https://cdn.jsdelivr.net" crossorigin="anonymous">
    <link rel="preload" as="style" crossorigin="anonymous"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/variable/pretendardvariable-dynamic-subset.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/menuBar.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/menuBarDynamic.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/body.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/member/mypage/bodyDynamic.css">
</head>
<body>
    <div>
        <div class="matchUpForm form_main resume">
            <header class="form-header">
                <dl class="form-title">
                    <dt>기본 이력서</dt>
                </dl>
            </header>
            <div class="formBlock block_">
                <div class="formBlock-content content_">
                    <div class="mainResume-fieldset">
                        <div class="info">
                            <div class="info-label">학교</div>
                            <div class="info-body">
                                <div class="info_content">
                                    <span class="resumeEntry-major">${general.generalUniversity}</span>
                                    <span class="resumeEntry-minor is-empty">전공 미입력</span>
                                </div>
                            </div>
                        </div>
                        <div class="info">
                            <div class="info-label">직장</div>
                            <div class="info-body">
                                <div class="info_content">
                                    <span class="resumeEntry-major is-empty">${general.generalCompany}</span>
                                    <span class="resumeEntry-minor is-empty">직책 미입력</span>
                                </div>
                            </div>
                        </div>
                        <div class="mainResume-edit"><span class="edit-area"><svg class="edit-area-svg" viewBox="0 0 24 24"><path fill-rule="evenodd" clip-rule="evenodd" d="M17.9338 2.08059C17.5629 1.80534 17.0366 1.83583 16.7002 2.17212L3.43579 15.4323L3.33867 15.5461C3.22211 15.7068 3.1582 15.9013 3.1582 16.1023V19.8947L3.16685 20.0233C3.22958 20.4857 3.62596 20.8421 4.10558 20.8421H7.2678L7.39635 20.8335C7.85877 20.7707 8.21517 20.3744 8.21517 19.8947L8.20652 19.7662C8.14379 19.3038 7.74742 18.9474 7.2678 18.9474H5.05168V16.4956L13.2631 8.28674L15.7123 10.7359L9.7494 16.6985L9.65767 16.8047C9.38244 17.1756 9.41297 17.7019 9.74927 18.0383C10.1192 18.4083 10.719 18.4083 11.0891 18.0384L21.8281 7.30155L21.9198 7.1953C22.195 6.82447 22.1645 6.29818 21.8283 5.96181L18.04 2.17233L17.9338 2.08059ZM17.0521 9.39616L19.8181 6.63032L17.3688 4.18232L14.6031 6.94717L17.0521 9.39616Z" fill="#3366FF"></path></svg></span></div>
                    </div>
                    <div class="mainResume-about"></div>
                </div>
            </div>
        </div>
        <div class="matchUpForm form_main enterInterestArea">
            <header class="form-header">
                <dl class="form-title">
                    <dt>전문분야 설정</dt>
                </dl>
            </header>
            <div class="formBlock block_">
                <div class="formBlock-content content_">
                    <div class="enterInterestArea-fieldset">
                        <div class="info">
                            <div class="info-label">직군</div>
                            <div class="info-body">개발</div>
                        </div>
                        <div class="info">
                            <div class="info-label">직무</div>
                            <div class="info-body">웹 개발자</div>
                        </div>
                        <div class="info">
                            <div class="info-label">경력</div>
                            <div class="info-body">${general.generalCareer}</div>
                        </div>
                        <div class="info">
                            <div class="info-label">스킬</div>
                            <div class="info-body">Java, JavaScript, AWS, HTML5, CSS3, JSP, Spring Framework, React.js, React Native, Spring Boot, Next.js</div>
                        </div>
                        <div class="enterInterestArea-edit"><span class="edit-area"><svg class="edit-area-svg" viewBox="0 0 24 24"><path fill-rule="evenodd" clip-rule="evenodd" d="M17.9338 2.08059C17.5629 1.80534 17.0366 1.83583 16.7002 2.17212L3.43579 15.4323L3.33867 15.5461C3.22211 15.7068 3.1582 15.9013 3.1582 16.1023V19.8947L3.16685 20.0233C3.22958 20.4857 3.62596 20.8421 4.10558 20.8421H7.2678L7.39635 20.8335C7.85877 20.7707 8.21517 20.3744 8.21517 19.8947L8.20652 19.7662C8.14379 19.3038 7.74742 18.9474 7.2678 18.9474H5.05168V16.4956L13.2631 8.28674L15.7123 10.7359L9.7494 16.6985L9.65767 16.8047C9.38244 17.1756 9.41297 17.7019 9.74927 18.0383C10.1192 18.4083 10.719 18.4083 11.0891 18.0384L21.8281 7.30155L21.9198 7.1953C22.195 6.82447 22.1645 6.29818 21.8283 5.96181L18.04 2.17233L17.9338 2.08059ZM17.0521 9.39616L19.8181 6.63032L17.3688 4.18232L14.6031 6.94717L17.0521 9.39616Z" fill="#3366FF"></path></svg></span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/member/mypage/edit/init.js"></script>
<script type="text/javascript">
	let $generalUniversity = "${general.generalUniversity}";
	let $generalCompany = "${general.generalCompany}";
	let $generalIntroduction = "${general.generalIntroduction}";
	
	console.log($generalUniversity);
</script>
</html>