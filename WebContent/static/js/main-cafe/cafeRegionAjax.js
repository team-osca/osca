function init() {
	init_region_button();
	getCafeList(REGION[0]);

}
function getCafeList(region_info) {
	const url = make_url(region_info);
	const dataType = get_dataType("json");
	const success = success_func;
	const error = error_func;
	const ajax_request = { url, dataType, success, error };
	$.ajax(ajax_request);
	button_color_change(region_info);
}

function make_url(location) {
	return path + "/listOk.cafe?location=" + location;
};
function get_dataType(data_type) {
	return data_type;
};
function success_func(datas) {
	let text = "";
	if(datas.length == 0){
		$('.cafe-empty').css('display', 'block');
	}
	else{
		$('.cafe-empty').css('display', 'none')
		datas.forEach((data) => {
			text += list_data(data);
		});
	}
	$cafe_list_container.html(text);		
};
function error_func(a, b, c) {
	console.log(a, b, c);
};

function list_data(data) {
	const DAY = ['일', '월', '화', '수', '목', '금', '토'];
	/*console.log(DAY[new Date(data.cafeRegistDate).getDay()]);*/
	return (`
		<li class="cafe-card-container cafe-card-interaction">
	        <a href="${path}/detailOk.cafe?id=${data.id}" style="--base-font-size: 10;">
	            <div class="cafe-thumbnail-image cafe-thumbnail-responsive">
	                <img class="cafe-image cafe-image-cover" src="/static/allimages/main-page/b.png" alt="${data.ceoVO?.cafeName}">
	            </div>
	            <div class="section section-column">
	                <div class="BadgeList">
	                    <span class="badge-root badge-outline badge-size">
	                        <span class="badge-label badge-label-responsive">
	                            ${data.ceoVO?.cafeName}
	                        </span>
	                    </span>
	                </div>
	                <p class="title title-responsive">${data.cafeTitle}</p>
	            </div>
	            <div class="additional-section additional-section-column">
	                <span class="period period-responsive">
	                    ${data.cafeOpenTime}(목)~${data.cafeEndTime}(일)
	                </span>
	                <div class="tag tag-responsive">
	                    <span>#카공</span>
	                    <span>#24시</span>
	                </div>
	            </div>
	        </a>
	    </li>	
	`);
}
function init_region_button() {
	/*style="color: #3366FF;  --button-color: #3366FF;"*/
	REGION.forEach((data) => {
		$('#region-button-box').append(`
			<button class="region-button button-scroll button-shape button-outline-shape button-outline-primary button-outline-medium region-category-item button-content-color">
                <span class="region-button-contentButton">${data}</span>
            </button>
		`)
	})
	$('.region-button').on('click', function() {
		getCafeList($(this).children('.region-button-contentButton').text())
	})
}
function button_color_change(region_info) {
	$prev_click_button?.css({'color' : '#8a8a8a', '--button-color' : '#8a8a8a'});
	const idx = REGION.indexOf(region_info);
	$('#region-button-box').children(`button:eq(${idx})`).css({'color' : '#3366FF', '--button-color' : ' #3366FF'});
	$prev_click_button = $('#region-button-box').children(`button:eq(${idx})`);
}