// 뒤로가기
function goBack(){
	window.history.back();
}

// 내용
$(function() {
	$('#pr').click(function() {
		if ($('.privacy').css("display") == "none") {
			$('.privacy').show();
			$('.store').hide();
			$('.marketing').hide();
		}
	});
});


$(function() {
	$('#st').click(function() {
		if ($('.store').css("display") == "none") {
			$('.store').show();
			$('.privacy').hide();
			$('.marketing').hide();
		}
	});
});

$(function() {
	$('#mk').click(function() {
		if ($('.marketing').css("display") == "none") {
			$('.marketing').show();
			$('.privacy').hide();
			$('.store').hide();
		}
	});
});


// 버튼 색
$(function() {  
$('.TermsModal__navigatorItem').click(function(){
    $('.green').css('color', '#6a666e');
  });
});

$(function() {  
$('.green').click(function(){
    $('.green').css('backgroud' , '#1dd5a2');
  });
});


