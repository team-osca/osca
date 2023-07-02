const $mycafeList = $('.Offers-content>li');
// 전체 내 카페 리스트 수 
globalThis.mycafeListCount = $mycafeList.length - 1;
// 현재 등록되어 있는 카페 수
 globalThis.curMycafeList = $mycafeList.length - 1;
// 기한 만료된 카페 수
globalThis.mycafeExpiredListCount = $mycafeList.length - 1;


// 전체 수 객체
const $listAllMenu = $('dd>ul>li:first-child>a>div');
$listAllMenu.text(globalThis.mycafeListCount);

// 동록된 카페 객체
const $curListMEnu = $('dd>ul>li>a>div').eq(1);

// 기한 만료 수 객체
const $expiredMenu = $('dd>ul>li:last-child>a>div');

//  $listAll : 전체목록
//  $curList : 현재 등록된 
const $listAll = $('dd>ul>li>a').eq(0);
const $curList = $('dd>ul>li>a').eq(1);
const $endList = $('dd>ul>li>a').eq(2);

// 클릭시 active 클래스 적용 & 목록 수 표시
$listAll.on('click', function(){    
    $(this.closest('li')).addClass('active');        
    $($curList.closest('li')).removeClass('active');
    $($endList.closest('li')).removeClass('active');
    // 젠체 리스트 목록 수 업데이트
    globalThis.mycafeListCount = $mycafeList.length - 1;    
    $listAllMenu.text(globalThis.mycafeListCount);
});



// 맨 처음 보이는건 전체 리스트이니깐 현재 등록된카페 리스트는 클릭시 업데이트  
$curList.on('click', function(){    
    $(this.closest('li')).addClass('active');
    $($listAll.closest('li')).removeClass('active');  
    $($endList.closest('li')).removeClass('active');
    // 기간 만료 카페 수 업데이트
    globalThis.curMycafeList = $mycafeList.length - 1;
    $curListMEnu.text(globalThis.mycafeExpiredListCount);
});

// 맨 처음 보이는건 전체 리스트이니깐 기한 만료된 카페 리스트는 클릭시 업데이트  
$endList.on('click', function(){    
    $(this.closest('li')).addClass('active');
    $($listAll.closest('li')).removeClass('active');  
    $($curList.closest('li')).removeClass('active');
    // 기간 만료 카페 수 업데이트
    globalThis.mycafeExpiredListCount = $mycafeList.length - 1;
    $expiredMenu.text(globalThis.mycafeExpiredListCount);
});





