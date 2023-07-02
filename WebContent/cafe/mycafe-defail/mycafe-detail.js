 /* 버튼 클릭 시 이미지 슬라이드 */
 // 현재 이미지 번호 0부터 시작
let index = 0;
// 슬라이드 wrap
const $slideWrap = $('.cafeImage-cafeImage-slide');
// 마지막 이미지 index 
const imageLastIndex =  $('.cafeImage-cafeImage-slide').length - 1;

// 버튼 객체들
const prebtn = $('.cafeImage-cafeImage-arrow-left');
const nextbtn = $('.cafeImage-cafeImage-arrow-right');

// 왼쪽버튼 클릭 이벤트
prebtn.on('click', function() {
    if (index > 0) {             
        index--;        
        $slideWrap.css('transform', `translate(${-700 * index}px)`);
        }
});

// 오른쪽 버튼 클릭 이벤트
nextbtn.on('click', function() {
      if(index < imageLastIndex) {
        index++;
         $slideWrap.css('transform', `translate(${-700 * index}px)`);
    }
});