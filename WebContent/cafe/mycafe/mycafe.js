const $mycafeList = $('.Offers-content>li');
// 전체 내 카페 리스트 수 
globalThis.mycafeListCount = $mycafeList.length - 1;
// 기한 만료된 카페 수
globalThis.mycafeExpiredListCount = $mycafeList.length - 1;

// 전체 수 객체
const $listAllMenu = $('dd>ul>li:first-child>a>div');
$listAllMenu.text(globalThis.mycafeListCount);

// 기한 만료 수 객체
const $expiredMenu = $('dd>ul>li:last-child>a>div');

//  $a1 : 전체목록
//  $a2 : 기간 만료된 게시글 
const $a1 = $('dd>ul>li>a').eq(0);
const $a2 = $('dd>ul>li>a').eq(1);

// 클릭시 active 클래스 적용 & 목록 수 표시
$a1.on('click', function(){    
    $(this.closest('li')).addClass('active');        
    $($a2.closest('li')).removeClass('active');
    // 젠체 리스트 목록 수 업데이트
    globalThis.mycafeListCount = $mycafeList.length - 1;    
    $listAllMenu.text(globalThis.mycafeListCount);
});

// 맨 처음 보이는건 전체 리스트이니깐 기한 만료된 카페 리스트는 클릭 스 업데이트  
$a2.on('click', function(){    
    $(this.closest('li')).addClass('active');
    $($a1.closest('li')).removeClass('active');  
    // 기간 만료 카페 수 업데이트
    globalThis.mycafeExpiredListCount = $mycafeList.length - 1;
    $expiredMenu.text(globalThis.mycafeExpiredListCount);
});




