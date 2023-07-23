
// 전체 수 객체
const $listAllMenu = $('dd>ul>li:first-child>a>div');
$listAllMenu.text(globalThis.mycafeListCount);

// 동록된 카페 객체
const $curListMEnu = $('dd>ul>li>a>div').eq(1);

// 기한 만료 수 객체
const $expiredMenu = $('dd>ul>li:last-child>a>div');

//  $listAll : 전체목록
//  $curList : 현재 등록된 
const $listAll = $('dd>ul>li');
const len = $listAll.length - 1;

// 클릭시 active 클래스 적용 & 목록 수 표시
$listAll.on('click', function(){    
    $listAll.removeClass('active');
    $(this).addClass('active');    
    
	 getDatas(len - $listAll.index(this));       
});






