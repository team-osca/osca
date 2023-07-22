// ----------------------- 비밀번호 재설정 입력-----------------------
const $pwInput = $('#pw-input');
$pwInput.on("focus", function() {
	let $this = $(this);
	if ($this.val()) {
		$this.css('border', '1px solid blue');
	}
});

$pwInput.keyup(function() {
	const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()])[a-zA-Z\d!@#$%^&*()]{8,16}$/;
	let $this = $(this);
	if (!regex.test($this.val())) {
		$this.attr('style', 'border: 1px solid red !important');
		$('#check-pw-msg').css('display', 'block');
		isPW = false;
	} else {
		$this.css('border', '1px solid blue');
		$('#check-pw-msg').css('display', 'none');
		isPW = true;
	}
});

// ----------------------- 비밀번호 재설정 입력-----------------------

// ----------------------- 비밀번호 재설정 확인 -----------------------
const $pwCheck = $('#pw-input-check');
const $contirneBtn = $('.continue');
const $contirneSpan = $('.continue-text');
let isPW = false;

$pwCheck.on('focus', function() {
	let $this = $(this);
	if (!$this.val()) {
		$this.css('border', '1px solid blue');
	}
});

$pwCheck.keyup(function() {
	let $this = $(this);

	if ($pwInput.val() !== $this.val()) {
		$this.attr('style', 'border: 1px solid red !important');
		$('#not-eq-err').css('display', 'block');
		if (!$contirneBtn.is(':disabled')) {
			disableButton();
		}
	} else {
		$this.css('border', '1px solid blue');
		$('#not-eq-err').css('display', 'none');
		if (isPW) {
			activationButton();
		}
	}
});

function activationButton() {
	$contirneBtn.attr('disabled', false);
	$$contirneSpan.attr('disabled', false);
}

function disableButton() {
	$contirneBtn.attr('disabled', true);
	$$contirneSpan.attr('disabled', true);
}

// ----------------------- 비밀번호 재설정 확인 -----------------------














