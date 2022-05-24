$(function () {
		
		var emailValidCheck = document.getElementById('email');
		

		//----------------------------------------------------------------------
		// -- 이메일 
	    // 정규표현식을 정의합니다.
	    function email_check(email) {

	        let regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	        return (email != '' && email != 'undefined' && regex.test(email));

	    }

		function setValidText(){
			if(!email_check(email)){
				$("#vaildEmail").text('잘못된 형식의 이메일 주소입니다').css("color","red");
				console.log("정규표현식에 맞지 않음 incorrect");
				return false;
		     }else{
		        $("#vaildEmail").text('유효한 이메일 주소입니다.').css("color","green");
				console.log("정규표현식에 맞음 correct");
		        return true;
		     }
		}
		
		emailValidCheck.addEventListener('focusout', function () {
	        setValidText();
	    });


	    
});

		
