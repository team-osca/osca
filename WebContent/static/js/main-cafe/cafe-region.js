 /* 버튼 클릭 시 목록 슬라이드 */
 // 슬라이드 wrap
 const $slideWrap = $('.button-scroll');
 
 // 버튼 객체들
 const prebtn = $('.leftarrow-button');
 const nextbtn = $('.rightarrow-button');
 
 // 왼쪽버튼 클릭 이벤트
 prebtn.on('click', function() {
    $slideWrap.css('transform', 'translate(340px)');
    nextbtn.css('visibility','visible');
    prebtn.css('visibility','hidden');
 });
 
 // 오른쪽 버튼 클릭 이벤트
 nextbtn.on('click', function() {
    $slideWrap.css('transform', 'translate(-340px)');
    nextbtn.css('visibility','hidden');
    prebtn.css('visibility','visible');
 });
 
  /* 버튼 클릭 시 색상 변경 */
$(".button-content-color").on("click",function(){
  document.getElementById("all-content-color").style="";
  $(this).addClass("clicked");
  $(".button-content-color").not(this).removeClass("clicked");
});
 