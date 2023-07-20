
function validEmailCheck(obj){  
    var pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    return (obj.value.match(pattern)!=null)
}

$('.emailCheck').on('input', function(){
    $('.email-next').attr('disabled', validEmailCheck(this) ? false : true);
})

  $('.email-next').on('click', function() {
    var email = $('.emailCheck').val(); // Get the entered email value
  });