$('.notiButton').click(function(){
    if($(this).hasClass('activeBg') ){
        $(this).removeClass('activeBg');
    }
    else{
        $(this).addClass('activeBg');
    }
});
$('.profileButton .avatarBorder').click(function(){
    if($(this).hasClass('showMenuPopover') ){
        $(this).removeClass('showMenuPopover');
    }
    else{
        $(this).addClass('showMenuPopover');
    }
});