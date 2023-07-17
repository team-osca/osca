//클릭시 리스트 색 변경
$(document).ready(function() {
    $('li').click(function() {
      $('li').removeClass('active');
      $(this).addClass('active');
    });
  });


// ... 수정 삭제  클릭시 열림! 재클릭시 닫힘!!
  const $menuButton = $('.PostContents__menu_button');
  const $otherToggleElement = $('.OtherToggleElement');
  const $menuPopup = $('.MenuPopup');
  
  $menuButton.click(function() {
    $menuPopup.not($(this).siblings('.MenuPopup')).removeClass('toggle');
    $(this).siblings('.MenuPopup').toggleClass('toggle');
  });
  
  $otherToggleElement.click(function() {
    $menuPopup.removeClass('toggle');
  });