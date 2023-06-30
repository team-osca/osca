$('.toggleEditable').on('click', function(){
    let $optionSelects = $('.option-select');
    $optionSelects.is('[disabled]') ? 
        $optionSelects.removeAttr('disabled') : $optionSelects.attr('disabled' , '');
})
$('.option-select').on('click', function(){
    $(this).hasClass('active') ? $(this).removeClass('active') : $(this).addClass('active') ;

});