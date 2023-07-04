const $authenticationNumberBtn = $('#AuthenticationNumberBtn');

// -----------------휴대폰번호 정규식 체크------------------
$('#phonenumner-input').keyup(function(){
    const phoneNumber = $(this).val();
    checkphoneNumber(phoneNumber);
});

 
const checkphoneNumber = (phoneNumber) => {
    if(/^010[0-9]{8}$/.test(phoneNumber)) {
        $authenticationNumberBtn.prop('disabled', false);
    } else {
        $('.isnot-a-phonenumber').css('display', 'block');
    }   
};
// ----------------휴대폰번호 정규식 체크----------------

// 인증번호 확인
const $checkAuthCode = $('#input-authCode'); 
$authenticationNumberBtn.on('click', function() {
    $checkAuthCode.attr('readonly', false);
    // 만약 인증번호가 같으면 계속 버튼 활성화
    // 아니라면 비활성화  
})
// 인증번호 확인

