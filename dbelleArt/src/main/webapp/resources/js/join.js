$(function() {	var nameValidCheck = document.getElementById('name');	var emailValidCheck = document.getElementById('email');	var pwValidCheck = document.getElementById('pw');	var pwCheckValidCheck = document.getElementById('pwCheck');	var telValidCheck = document.getElementById('tel');	nameValidCheck.addEventListener('focusout', function(event) {		//console.log(event.target.value);		setValidName(event.target.value);	});	emailValidCheck.addEventListener('focusout', function(event) {		//console.log(event.target.value);		setValidEmail(event.target.value);	});	pwValidCheck.addEventListener('focusout', function(event) {		//console.log(event.target.value);		setValidPw(event.target.value);	});	pwCheckValidCheck.addEventListener('focusout', function(event) {		console.log(event.target.value);		setValidPwCheck(event.target.value);	});	telValidCheck.addEventListener('focusout', function(event) {		console.log(event.target.value);		setValidTel(event.target.value);	});	//글쓰고 다시 지웠을때 유효성 사라지는거 추가 !!!!!!!	//--------------------------------------------------------------------------	// -- 이름 유효성 검사	function name_check(name) {		let renex = /^[가-힣]{2,}$/;		return (name != '' && name != 'undefined' && renex.test(name));	}	function setValidName(name) {		if (!name_check(name)) {			$("#vaildName").text('한글 두 글자 이상 입력해주세요.').css("color", "red");			e.preventDefault();			return false;					} else {			$("#vaildName").text('유효한 이름 형식입니다.').css("color", "green");			return true;		}	}	//--------------------------------------------------------------------------	// -- 이메일 유효성 검사	function email_check(email) {		console.log(email);		let regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;		return (email != '' && email != 'undefined' && regex.test(email));	}	function setValidEmail(email) {		if (!email_check(email)) {			$("#vaildEmail").text('잘못된 형식의 이메일 주소입니다').css("color", "red");			console.log("정규표현식에 맞지 않음 incorrect");			e.preventDefault();			return false;					} else {			$("#vaildEmail").text('유효한 이메일 주소입니다.').css("color", "green");			console.log("정규표현식에 맞음 correct");			return true;		}	}	//--------------------------------------------------------------------------	//--비밀번호 유효성 검사	function pw_check(pw) {		let regExp = /^[a-zA-Z\d]{6,12}$/;		return (pw != '' && pw != 'undefined' && regExp.test(pw));	}	function setValidPw(pw) {		if (!pw_check(pw)) {			$("#vaildPw").text("문자, 숫자조합 6자리 이상 입력해 주세요.(13자이하)").css("color", "red");			e.preventDefault();			return false;					} else {			$("#vaildPw").text("유효한 비밀번호 형식입니다.").css("color", "green");			return true;		}	}	// 비밀번호, 비밀번호 확인의 일치 여부/*	function setValidPwCheck(pw) {		// 비밀번호가 유효하지 않은 상태에서 비밀번호 확인 작성 시		if (!pw_check(pw) && pwCheckValidCheck.length > 0) {			alert("유효한 비밀번호를 먼저 작성해주세요.");			consol.log("alert")			$("#vaildPwcheck").val(""); // 비밀번호 확인에 입력한 값 삭제			$("#pw").focus();		} else {			if (pwValidCheck.length == 0 || pwCheckValidCheck.length == 0) {				$("#vaildPwcheck").text("");			} else if (pwValidCheck == pwCheckValidCheck) {				$("#vaildPwcheck").text("비밀번호가 일치합니다.").css("color", "green");			} else {				$("#vaildPwcheck").text("비밀번호가 불일치합니다.").css("color", "red");			}		}	}*/	//--------------------------------------------------------------------------	//--전화번호 유효성 검사	function tel_check(tel) {		var regTxp = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;		return (tel != '' && tel != 'undefined' && regTxp.test(tel));	}	function setValidTel(tel) {		if (!tel_check(tel)) {			$("#vaildTel").text("전화번호 형식이 유효하지 않습니다.(010-000-0000)").css("color", "red");			e.preventDefault();			return false;					} else {			$("#vaildTel").text("유효한 전화번호 형식입니다.").css("color", "green");			return true;		}	}});	//--------------------------------------------------------------------------	//--주소 API/*	window.onload = function(){    document.getElementById("address").addEventListener("click", function(){ //주소입력칸을 클릭하면        //카카오 지도 발생        new daum.Postcode({            oncomplete: function(data) { //선택시 입력값 세팅                document.getElementById("address").value = data.address; // 주소 넣기                //document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱            }        }).open();    });}*/