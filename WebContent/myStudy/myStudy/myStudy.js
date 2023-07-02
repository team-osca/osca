//클릭시 리스트 색 변경
$(document).ready(function() {
    $('li').click(function() {
      $('li').removeClass('active');
      $(this).addClass('active');
    });
  });

// 스터디 리스트 수에 따라 왼쪽 토탈 스터디 수 변경
const ulCount = document.querySelectorAll('.studyListCount ul').length;
const label1 = document.querySelector('.label_1');
label1.textContent = ulCount.toString();
