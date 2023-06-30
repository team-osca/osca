/* 스코롤 도중 특정 부분에서 스타일 적용 */
// $(window).scroll(function() {
//     var targetElement = $('.cafeContent-divider');
//     var targetOffset = targetElement.offset().top - 700; 
//     let index = $(window).scrollTop(); 
//     if ( index >= targetOffset) {
//       console.log("도달"); // 스타일 추가
//     } else {
//         console.log("도달하지못함"); // 스타일 제거
//     }
//   });
 
 /* 버튼 클릭 시 이미지 슬라이드 */
let count = 0;
const $slideWrap = $('.cafeImage-cafeImage-slide');
const maxcount =  $('.cafeImage-cafeImage-slide').length;

const prebtn = $('.cafeImage-cafeImage-arrow-left');
const nextbtn = $('.cafeImage-cafeImage-arrow-right');

prebtn.on('click', function() {
    if (count > 0) {             
        count--;        
        $slideWrap.css('transform', `translate(${-700 * count}px)`);
        }
});

nextbtn.on('click', function() {
      if(count < maxcount) {
         $slideWrap.css('transform', `translate(${-700 * count}px)`);
        count++;
    }
});