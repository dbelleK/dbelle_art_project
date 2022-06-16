// 뒤로가기
function goBack(){
	window.history.back();
}

/*function onPrivacy(){
	$('.privacy').show()
}
function onStore(){
	$('.store').show()
}
function onMarketing(){
	$('.marketing').show()
}*/

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


