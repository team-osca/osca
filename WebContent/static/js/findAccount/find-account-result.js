/**
 * 계정을 찾았을 때
 */

// ------------------ 이전 버튼 클릭 이벤트 ----------------

$('.prebtn').click(function(){
	history.back();
});

$('.pre-btn').click(function(){
	history.back();
});

// ------------------ 이전 버튼 클릭 이벤트 ----------------

// ------------------ 메인으로 돌아가기 버튼 클릭 이벤트 ----------------

$('#go-to-main').click(function() {
	let link = contextPath + "/signOrLogin.member";
	location.href = link;
});

// ------------------ 메인으로 돌아가기 버튼 클릭 이벤트 ----------------
