$(function() {	let nameValidCheck = document.getElementById('name');	let emailValidCheck = document.getElementById('email');	let pwValidCheck = document.getElementById('pw');	let pwCheckValidCheck = document.getElementById('pwCheck');	let telValidCheck = document.getElementById('tel');	let addressValidCheck = document.getElementById('address');	nameValidCheck.addEventListener('focusout', function(event) {		//console.log(event.target.value);		setValidName(event.target.value);	});	emailValidCheck.addEventListener('focusout', function(event) {		//console.log(event.target.value);		setValidEmail(event.target.value);	});	pwValidCheck.addEventListener('focusout', function(event) {		//console.log(event.target.value);		setValidPw(event.target.value);	});	pwCheckValidCheck.addEventListener('focusout', function(event) {		//console.log(event.target.value);		setValidPwCheck(event.target.value);	});	telValidCheck.addEventListener('focusout', function(event) {		//console.log(event.target.value);		setValidTel(event.target.value);	});		addressValidCheck.addEventListener('focus', function(event) {		//console.log(event.target.value);		setValidAddress(event.target.value);	});	//글쓰고 다시 지웠을때 유효성 사라지는거 추가 !!!!!!!	//--------------------------------------------------------------------------	// -- 이름 유효성 검사	function name_check(name) {		let renex = /^[가-힣]{2,}$/;		return (name != '' && name != 'undefined' && renex.test(name));	}	function setValidName(name) {		if (!name_check(name)) {			$("#vaildName").text('한글 두 글자 이상 입력해주세요.').css("color", "red");			$("#name").val("");			return false;		} else {			$("#vaildName").text('유효한 이름 형식입니다.').css("color", "green");			return true;		}	}	//--------------------------------------------------------------------------	//--비밀번호 유효성 검사	function pw_check(pw) {		let regExp = /^[a-zA-Z\d]{6,12}$/;		return (pw != '' && pw != 'undefined' && regExp.test(pw));	}	function setValidPw(pw) {		if (!pw_check(pw)) {			$("#vaildPw").text("문자, 숫자조합 6자리 이상 입력해 주세요.(13자이하)").css("color", "red");			$("#pw").val("");			return false;		} else {			$("#vaildPw").text("유효한 비밀번호 형식입니다.").css("color", "green");			return true;		}	}	// 비밀번호, 비밀번호 확인의 일치 여부	function setValidPwCheck(pw) {		// 비밀번호가 유효하지 않은 상태에서 비밀번호 확인 작성 시		if (!pw_check(pw)) {			$("#vaildPwcheck").text("유효한 비밀번호 형식을 작성해주세요.").css("color", "red");			$("#pwCheck").val(""); // 비밀번호 확인에 입력한 값 삭제			/*$("#pwCheck").focus();*/		} else {						 if (pwValidCheck.value == pwCheckValidCheck.value) {				$("#vaildPwcheck").text("비밀번호가 일치합니다.").css("color", "green");			} else {				$("#vaildPwcheck").text("비밀번호가 불일치합니다.").css("color", "red");				$("#pwCheck").val("");			}		}	}	//--------------------------------------------------------------------------	//--전화번호 유효성 검사	function tel_check(tel) {		var regTxp = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;		return (tel != '' && tel != 'undefined' && regTxp.test(tel));	}	function setValidTel(tel) {		if (!tel_check(tel)) {			$("#vaildTel").text("전화번호 형식이 유효하지 않습니다.(010-000-0000)").css("color", "red");			$("#tel").val("");			return false;		} else {			$("#vaildTel").text("유효한 전화번호 형식입니다.").css("color", "green");			return true;		}	}	//--------------------------------------------------------------------------	//주소 api	window.onload = function(){	    document.getElementById("address").addEventListener("click", function(){ //주소입력칸을 클릭하면	        //카카오 지도 발생	        new daum.Postcode({	            oncomplete: function(data) { //선택시 입력값 세팅	                document.getElementById("address").value = data.address; // 주소 넣기	                //document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱	            }	        }).open();	    });	}	function setValidAddress(data) {		if (!data) {			$("#vaildAddress").text("주소를 입력하세요.").css("color", "red");			console.log("red");			return false;		} else {			$("#vaildAddress").text("주소입력이 완료되었습니다.").css("color", "green");			console.log("green");			return true;			}	}	//--------------------------------------------------------------------------	//약관동의		//체크박스 전체 선택, 전체 해제	$(".form-floating").on("click", "#checkAll", function () { 			    /*var checked = $(this).is(":checked");		if(checked){		  	$(this).parents(".form-floating").find('input').prop("checked", true);		  } else {		  	$(this).parents(".form-floating").find('input').prop("checked", false);		  }*/		$(this).parents(".form-floating").find('input').prop("checked", $(this).is(":checked"));	});	// 체크박스 전체 선택 후 하나만 해제했을 때 전체선택도 해제, 개별로 전체 선택 되었을 때 전체선택 선택	$(".form-floating").on("click", ".normal", function() {				var is_checked = true;			$(".form-floating .normal").each(function() { //each=for문 생각(나는 전체 3개가 돔)								console.log($(this).is(":checked")); //체크된 상태면 true 아니면 false를 반환합니다.								is_checked = is_checked && $(this).is(":checked"); // 하나라도 false이면 false , 모두 true 일 시 만 true			});			$("#checkAll").prop("checked", is_checked);		});		//약관동의 유효성 검사	/* 1번,2번이 체크되어 있지 않을 때 에러, 1번이 체크되어 있지 않을 때 에러, 2번이 체크되어 있지 않을 때 에러*/	$('#sendJoin').click(function() {		if ($('#privacyAgreeCheckbox').is(":checked") == false && $('#dbelleAgreeCheckbox').is(":checked") == false) {			$("#vaildEssential").text(" [필수]는 필수 동의 해주십시오.").css("color", "red");		} else if ($('#privacyAgreeCheckbox').is(":checked") == false) {			$("#vaildEssential").text(" [필수]는 필수 동의 해주십시오.").css("color", "red");		} else if ($('#dbelleAgreeCheckbox').is(":checked") == false) {			$("#vaildEssential").text(" [필수]는 필수 동의 해주십시오.").css("color", "red");		} else {			$("#vaildEssential").text("");		}	});			//--------------------------------------------------------------------------	//전체검사		document.getElementById("sendJoin").addEventListener("click", function() {				const form = document.getElementById("btnForm");				if (name_check(nameValidCheck.value) && email_check(emailValidCheck.value) && pw_check(pwValidCheck.value)  && pw_check(pwCheckValidCheck.value) && tel_check(telValidCheck.value) && addressValidCheck.value) {					if ($("#privacyAgreeCheckbox").is(":checked") === true && $("#dbelleAgreeCheckbox").is(":checked") === true) {						form.submit();				}			} else {				alert("가입조건에 맞게 모두 작성하세요.")			}			});			});//이메일 중복검사function checkEmail() {	var email = $('#email').val(); //id값이 "id"인 입력란의 값을 저장	$.ajax({		url: '/email/emailCheckProcess', //Controller에서 요청 받을 주소		type: 'POST', //POST 방식으로 전달		data: {			"email": email		},		success: function(cnt) { //컨트롤러에서 넘어온 cnt값을 받는다 			if (cnt == 0) { //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 				$("#vaildEmail").text("사용할 수 있는 아이디 입니다.").css("color", "green");				console.log(email);			} else { // cnt가 1일 경우 -> 이미 존재하는 아이디				$("#vaildEmail").text("이미 존재하는 이메일 입니다.").css("color", "red");				alert("아이디를 다시 입력해주세요");				$('#email').val('');			}		},		error: function(request, status, error) {			const errorMsg = JSON.parse(request.responseText);			alert("ERROR CODE: " + request.status + "\n" +				"ERROR MESSAGE: " + errorMsg.message + "\n" +				"상태가 지속될 경우 관리자에게 문의해주세요");		}	}	);}//--------------------------------------------------------------------------// -- 이메일 유효성 검사function setValidEmail(email) {	if (!email_check(email)) {		$("#vaildEmail").text('잘못된 형식의 이메일 주소입니다').css("color", "red");		$("#email").val("");		console.log("정규표현식에 맞지 않음 incorrect");		return false;	} else {		$("#vaildEmail").text('유효한 형식의 이메일 입니다.').css("color", "green");		checkEmail();		console.log("정규표현식에 맞음 correct");		return true;	}}function email_check(email) {	console.log(email);	let regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;	return (email != '' && email != 'undefined' && regex.test(email));}//================================약관동의//약관동의 새창/*function openWin1() {    window.open("/privacyAgree", "약관동의", "width=600, height=800, toolbar=no, menubar=no, scrollbars=no, resizable=yes")}function openWin2() {    window.open("/dbelleAgree", "약관동의", "width=600, height=800, toolbar=no, menubar=no, scrollbars=no, resizable=yes")}function openWin3() {    window.open("/marketingAgree", "약관동의", "width=600, height=800, toolbar=no, menubar=no, scrollbars=no, resizable=yes")}*/	