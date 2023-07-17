/**
 *  계정찾기 
 */

// 인증번호 받기 버튼
const $authenticationNumberBtn = $('#AuthenticationNumberBtn');
// 인증번호 변수
let authenticationData;
let flag;

// ------------------ 이전 버튼 클릭 이벤트 ----------------

// 이전 버튼 클릭 시 로그인 페이지로 이동 
$('pre-bth').click(function() {
	// location.href = link; 로 로그인 페이지로 경로 이동 
	history.back();
});

// ------------------ 이전 버튼 클릭 이벤트 ----------------
// -----------------휴대폰번호 정규식 체크------------------
$('#phonenumber-input').keyup(function() {
	const phoneNumber = $(this).val();
	checkphoneNumber(phoneNumber);
});


const checkphoneNumber = (phoneNumber) => {
	if (/^010-?[0-9]{4}-?[0-9]{4}$/.test(phoneNumber)) {
		$authenticationNumberBtn.prop('disabled', false);
		$('.isnot-a-phonenumber').css('display', 'none');
		$('#AuthenticationNumberBtn>.check-phonenumber-bth-span').css('color', 'var(--theme-palette-colors-blue-400)');
	} else {
		$authenticationNumberBtn.prop('disabled', true);
		$('.isnot-a-phonenumber').css('display', 'block');
	}
};
// ----------------휴대폰번호 정규식 체크----------------

//-----------------인증번호 받기 버튼 클릭 이벤트----------

$authenticationNumberBtn.click(function() {
	$.ajax({
		url: contextPath + "/get_authentication_number.member?phoneNumber=" + $('#phonenumner-input').val(),
		async: "false",
		success: function(result) {
			authenticationData = result;
			console.log(authenticationData);
			// 인증번호가 발송되었습니다. 메시지 출력
			$('.Authentication-Number-Guide').css('display', 'block');
		},
		error: function(a, b, c) {
			console.log(a, b, c);
		}
	});

	$(this).attr("disabled", true);
});

//-----------------인증번호 받기 버튼 클릭 이벤트----------

// ----------------문자로 인증번호 확인-----------------
// 키업 시 인증번호 전송 버튼 활성화
$("#input-authCode").keyup(function() {
	if ($('#input-authCode').val()) {
		$('.certification-Btn').css('display', 'block');
	} else {
		$('.certification-Btn').css('display', 'none');
	}
});

// 버튼 클릭 시 인증번호 체크하고 계속 버튼 활성화 
$('.certification-Btn').click(function() {
	let input = $('#input-authCode').val();
	let $AuthenticationNumberGuide = $('.Authentication-Number-Guide');
	if (input && input === authenticationData) {
		$('.continue-btn').removeAttr("disabled");
		$('.continue-btn span').removeAttr("disabled");
		$AuthenticationNumberGuide.css('color', 'green');
		$AuthenticationNumberGuide.text('인증되었습니다.');
		$('#input-authCode').attr('readonly', true);
		$('.certification-Btn').css('display', 'none');
	} else {
		$AuthenticationNumberGuide.css('color', 'red');
		$AuthenticationNumberGuide.text('올바르지 않은 인증번호입니다 인증번호를 확인해 주세요.');
	}
});


// ----------------문자로 인증번호 확인-----------------
// 인증번호 받으면 인증번호 전송 버튼 활성화
const $checkAuthCode = $('#input-authCode');
$authenticationNumberBtn.on('click', function() {
	$checkAuthCode.attr('readonly', false);
})
// 인증번호 받으면 인증번호 전송 버튼 활성화

//------------------- 계속 버튼 클릭 이벤트 (계정 찾기)-------------------

$('.continue-btn').click(function() {
	let phoneNumber =  $('#phonenumber-input').val();
	let URL = contextPath + "/find_account.member";
	$.ajax({
		url: URL,
		type : "POST",
		data: {"phoneNumber": phoneNumber},
		dataType: 'json',
		success: function(result) {
			let account = result.account;
			if ( !(account === '계정이 없습니다.') ) {
				link = "http://localhost:8090/sign_infind_account_next.member?flag=true&account=" + account;
			} else {
				link = "http://localhost:8090/sign_infind_account_next.member?flag=false";
			}
			location.href = link;
		},
		error: function(a, b, c) {
			console.log(a, b, c);
		}
	});

});

//------------------- 계속 버튼 클릭 이벤트 (계정 찾기) -------------------


















