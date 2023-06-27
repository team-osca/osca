const $mycafeList = $('.Offers-content>li');
globalThis.mycafeListCount = $mycafeList.length - 1;

const $leftMenu = $('dd>ul>li:first-child>a>div');
$leftMenu.text(globalThis.mycafeListCount);

const $a1 = $('dd>ul>li>a').eq(0);
const $a2 = $('dd>ul>li>a').eq(1);
$a1.on('click', function(){    
    $(this.closest('li')).addClass('active');        
    $($a2.closest('li')).removeClass('active');        
});
$a2.on('click', function(){    
    $(this.closest('li')).addClass('active');
    $($a1.closest('li')).removeClass('active');          
});