$(document).ready(function() {
	//전화번호
	function validPhoneNumberCheck(obj) {
		var pattern = /^010-?[0-9]{4}-?[0-9]{4}$/;
		return (obj.value.match(pattern) != null)
	}

	//전화번호 인증받기 버튼 활성화
	$('.putnumber').on('input', function() {
		$('.verificationbtn').attr('disabled', validPhoneNumberCheck(this) ? false : true);

		if (validPhoneNumberCheck(this)) {
			$('.isnot-a-phonenumber').css('display', 'none');
		} else {
			$('.isnot-a-phonenumber').css('display', 'block');
		}
	})

	//비번
	const $pwInput = $('#pw-input');
	const $pwCheck = $('#pw-input-check');

	$pwInput.keyup(function() {
		const regex = /((?=.*[a-z])(?=.*[A-Z])(?=.*\d))|((?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()]))|((?=.*[a-z])(?=.*\d)(?=.*[!@#$%^&*()]))|((?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()]))/;
		let $this = $(this);

		if (!regex.test($this.val())) {
			$this.attr('style', 'border: 1px solid red !important');
			$('#check-pw-msg').css('display', 'block');
		} else {
			$this.css('border', '1px solid blue');
			$('#check-pw-msg').css('display', 'none');
		}
	});

$pwCheck.keyup(function() {
    let $this = $(this);
    if ($pwInput.val() !== $this.val()) {
        $this.attr('style', 'border: 1px solid red !important');
        $('#not-eq-err').css('display', 'block');
    } else {
        $this.css('border', '1px solid blue');
        $('#not-eq-err').css('display', 'none');
    }
});

  //약관동의
 	 let $agreements = $('.agreements');
	let $term = $('.term');
	let $check = $('.check');
	let $notice = $('.receive,.mean');
	let $containerPath = $('.container>path');
	let $inputPassword = $('input[type=password]');
	let $inputText = $('input[type=text]');
	let $inputEmail = $('input[type=email]');

	let checkColorBlue = 'var(--theme-palette-colors-blue-400)';
	let checkColorGray = 'var(--theme-palette-colors-gray-300)';

	$agreements.on('click', checkAll);  //전체동의

	$term.on('click', changeCheckBox); //체크 박스 css 변경

	$notice.on('click', changeContainerPath);

	function checkAll() {
		$check.attr('class', $check.attr('class') == 'check_active' ? 'check' : 'check_active');
		checkEssential();
		changeAllContainerPath($(this).children(':first'));
	}


	function changeCheckBox() {
		let this_idx = $term.index(this) + 1;
		let checkClassName = $($check[this_idx]).attr('class') == 'check';
		$($check[this_idx]).attr('class', checkClassName ? 'check_active' : 'check');
		checkAgreemnts();
		checkEssential();
		if (this_idx == $term.length) {
			changeAllContainerPath($($check[this_idx]));
		}
	}

	function changeAllContainerPath(obj) {
		let checkObjClassName = obj.attr('class') == 'check';

		$containerPath.attr('stroke', checkObjClassName ? checkColorGray : checkColorBlue);
	}

	//체크 색 변경
	function changeContainerPath() {
		let this_idx = parseInt($notice.index(this) / 2);
		let checkClassName = $($containerPath[this_idx]).attr('stroke') == checkColorBlue;

		$($containerPath[this_idx]).attr('stroke', checkClassName ? checkColorGray : checkColorBlue);
		checkPath();
	}

	//4개 전부면 ~~~ 전제동의에 불들어오고	
	function checkAgreemnts() {
		$('.term>.check_active').length == 4 ?
			$('.agreements>.check').attr('class', 'check_active') :
			$('.agreements>.check_active').attr('class', 'check');
	}


	//가입하기 버튼 활성화 -----수정!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	function checkEssential() {
		let idx = 0;
		let isAllCheck;
		for (let i = 0; i < 3; i++) {
			if ($($check[i + 1]).attr('class') == 'check_active') {
				idx++;
			}
		}
		isAllCheck = (idx == 3 ? false : true);
		 $submitButton.attr('disabled', isAllCheck);
	}
	
	

	function checkPath() {
		let idx = 0;
		let isAllCheck;
		for (let i = 0; i < 3; i++) {
			if ($($containerPath[i]).attr('stroke') == checkColorBlue) {
				idx++;
			}
		}
		isAllCheck = (idx == 3 ? 'check_active' : 'check');
		$($check[4]).attr('class', isAllCheck);
		checkAgreemnts();
	}



	// hw  - 카페 회원 여부
	const $term2 = $('.term2');
	const $check2 = $('.check2');
	const $memberRoleCheckbox = $('#memberRoleCheckbox');

	$memberRoleCheckbox.on('change', function() {
		// 카페회원 체크박스 여부 
		const memberRoleValue = memberRoleCheckbox.checked ? 1 : 0;
		$('#memberRoleHiddenInput').value = memberRoleValue;
	});

	$term2.on('click', changeCheckBox2);

	function changeCheckBox2() {
		// let this_idx = $term2.index(this) + 1;
		let checkClassName = $check2.attr('class') == 'check2';
		$check2.attr('class', checkClassName ? 'check_active' : 'check2');
	}

	// 휴대폰번호 인증 부분
	console.log("자스에 들어옴");
	// 인증번호 받기 버튼
	const $authenticationNumberBtn = $('#AuthenticationNumberBtn');
	// 인증번호 변수
	let authenticationData;

	$authenticationNumberBtn.click(function() {
		console.log("클릭버튼");
		$.ajax({
			url: contextPath + "/get_authentication_number.member?phoneNumber=" + $('#phoneNumber-input').val(),
			async: false,
			success: function(result) {
				authenticationData = result;
				console.log(authenticationData);
				// 인증번호가 발송되었습니다. 메시지 출력
				$('.Authentication-Number-Guide').css('display', 'block');
				$('#input-authCode').removeAttr('readonly'); // 인증번호 입력칸의 readonly 속성 제거
			},
			error: function(a, b, c) {
				console.log(a, b, c);
			}
		});
		$(this).attr("disabled", true); // 버튼 클릭 시 비활성화
	});

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
		if (input === authenticationData) {
			$AuthenticationNumberGuide.css('color', 'green');
			$AuthenticationNumberGuide.text('인증되었습니다.');
			$('#input-authCode').attr('readonly', true); // 인증번호 입력칸을 읽기 전용으로 변경
			$('.certification-Btn').css('display', 'none');
		} else {
			$AuthenticationNumberGuide.css('color', 'red');
			$AuthenticationNumberGuide.text('올바르지 않은 인증번호입니다. 인증번호를 확인해 주세요.');
		}
	});
//가입버튼
const $submitButton = $('.submission');
const $modal = $('.modal_area1');
//가입버튼 누르면 모달창 보이기

 $submitButton.click(function(){
	$modal.css('z-index','1000');
});



});