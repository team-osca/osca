<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/all.css"/>
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
	<div class="resumeInfoSetting">
    <div class="matchUpForm form_main fixedFooter">
        <header class="form-header">
            <dl class="form-title">
                <dt>학교·직장등록</dt>
            </dl>
        </header>
        <div class="formBlock block_">
            <div class="formBlock-content content_">
                <div class="formButton button_ selected">
                    <h6 class="formButton-label">학교</h6>
                    <div class="input_box">
                        <input id="university" type="text" autocomplete="off" val="">
                    </div>
                </div>		
                <div class="formButton button_">
                    <h6 class="FormButton-label">직장</h6>
                    <div class="input_box">
                        <input id="company" type="text" autocomplete="off" val="">
                    </div>
                </div>
                <div class="careerPeriod">
                    <select class="yearSelect yearSelect_notSelect" name="startYear">
                        <option disabled="" hidden="" value="0">YYYY</option>
                        <option value="2023">2023</option>
                        <option value="2022">2022</option>
                        <option value="2021">2021</option>
                        <option value="2020">2020</option>
                        <option value="2019">2019</option>
                        <option value="2018">2018</option>
                        <option value="2017">2017</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                    </select>
                    <span class="monthDot">.</span>
                    <select class="monthSelect monthSelect_notSelect" name="startMonth">
                        <option disabled="" hidden="" value="0">MM</option>
                        <option value="1">01</option>
                        <option value="2">02</option>
                        <option value="3">03</option>
                        <option value="4">04</option>
                        <option value="5">05</option>
                        <option value="6">06</option>
                        <option value="7">07</option>
                        <option value="8">08</option>
                        <option value="9">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>
                    <span class="termDash">-</span>
                    <select class="yearSelect yearSelect_notSelect" name="endYear">
                        <option disabled="" hidden="" value="0">YYYY</option>
                        <option value="2023">2023</option>
                        <option value="2022">2022</option>
                        <option value="2021">2021</option>
                        <option value="2020">2020</option>
                        <option value="2019">2019</option>
                        <option value="2018">2018</option>
                        <option value="2017">2017</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                    </select>
                    <span class="monthDot">.</span>
                    <select class="monthSelect monthSelect_notSelect" name="endMonth">
                        <option disabled="" hidden="" value="0">MM</option>
                        <option value="1">01</option>
                        <option value="2">02</option>
                        <option value="3">03</option>
                        <option value="4">04</option>
                        <option value="5">05</option>
                        <option value="6">06</option>
                        <option value="7">07</option>
                        <option value="8">08</option>
                        <option value="9">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                    </select>   
                    <div class="checkBoxWrapper">
                        <input type="checkbox">
                        <span>현재 재직중</span>
                    </div>
                </div>
                <label for="name" class="textarea resumeBasicInfo">
                    <h6>간단 소개글</h6>
                    <p>직무 내용, 경험, 목표 등을 추가해서 더욱 멋진 소개글을 작성해보세요.</p>
                    <textarea id="name" autocomplete="off">${general.generalIntroduction}</textarea>
                </label>
            </div>
        </div>
        <footer class="formFooter footer_ isChild">
            <button id="update_bt" type="button" >확인</button>
        </footer>
    </div>
</div>
<script src="${pageContext.request.contextPath}/static/js/member/mypage/edit/resumeEdit.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/member/mypage/edit/init.js"></script>

<script>
$("#update_bt").click(function(){
	var $university=$("#university").val();
	var $company=$("#company").val();
	var $introduction=$("#name").val();
	let memberId=1;
$.ajax({
	    type : "post", // HTTP method type(GET, POST) 형식이다. --> 데이터 전송 타입
	    url : "/updateOk.general",  // 컨트롤러에서 대기중인 URL 주소이다. --> 데이터를 주고받을 파일 주소 입력
        data : {'memberId':memberId,'generalUniversity': $university, 'generalCompany':$company, 'generalIntroduction':$introduction},      
        error:function(){
       		location.reload();
        }
	});
});
</script>
</body>
</html>