$(document).ready(function() {
    const $memberRole = $('#memberRoleValue').data('member-role'); 
	const $memberId = $('#memberIdValue').data('member-id');
    const $myStudyMenu = $("#nav-my-study");
    const $myCafeMenu = $("#nav-my-cafe");
    const $profilePic = $("#profile-pic");
    const $signup = $("#nav-signup-login");
      
    if ($memberRole === 0) {
      //  내 스터디 메뉴 보이기, 내 카페 숨기기
      $myStudyMenu.show();
      $myCafeMenu.hide();
    } else if ($memberRole === 1) {
      // 내 카페 메뉴 보이기, 내 스터디 숨기기
      $myCafeMenu.show();
      $myStudyMenu.hide();
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
});