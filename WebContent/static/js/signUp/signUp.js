function validPhoneNumberCheck(obj){  
    var pattern =  /^[0-9]{3}-?[0-9]{4}-?[0-9]{4}$/;
    return (obj.value.match(pattern)!=null)
}

$('.putnumber').on('input', function(){
    $('.verificationbtn').attr('disabled', validPhoneNumberCheck(this) ? false : true);
})