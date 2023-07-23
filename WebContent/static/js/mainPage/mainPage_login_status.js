$(document).ready(function() {
    const $memberRole = $('#memberRoleValue').data('member-role'); 
	const $memberId = $('#memberIdValue').data('member-id');
    const $myStudyMenu = $("#nav-my-study");
    const $myCafeMenu = $("#nav-my-cafe");
    const $profilePic = $("#profile-pic");
    const $signup = $("#nav-signup-login");
      console.log("로그인 자스")
      console.log("멤버 롤" +$memberRole)
      
    if ($memberRole === 0) {
      //  내 스터디 메뉴 보이기, 내 카페 숨기기
      $myStudyMenu.show();
      $myCafeMenu.hide();
      //  내 스터디 바로가기 버튼 수정
      $("aside.lineBanner a").attr("href", "https://www.wanted.co.kr/wdlist");
      $("aside.lineBanner a div.lineBanner_box").text("내 스터디 바로가기");
    } else if ($memberRole === 1) {
      // 내 카페 메뉴 보이기, 내 스터디 숨기기
      $myCafeMenu.show();
      $myStudyMenu.hide();
       // 내 카페 바로가기 버튼 수정
        $("aside.lineBanner a").attr("href", "YOUR_CAFE_URL_HERE");
        $("aside.lineBanner a div.lineBanner_box").text("내 카페 바로가기");
    } else if ($memberRole == null) {
    //내 스터디 바로가기 버튼이 디폴트
      $("aside.lineBanner a").attr("href", "https://www.wanted.co.kr/wdlist");
      $("aside.lineBanner a div.lineBanner_box").text("내 스터디 바로가기");
      }

    if ($memberId !== null) {
      // Show profile picture and hide signup/login button
      $profilePic.show();
      $signup.hide();
    } else {
      // Show signup/login button and hide profile picture
      $signup.show();
      $profilePic.hide();
    }
    
    
// 프로필 사진 메뉴 모달
  const $MenuPopover = $('.MenuPopover');
  
$profilePic.click(function() {
  $MenuPopover.toggle();
});
    
});