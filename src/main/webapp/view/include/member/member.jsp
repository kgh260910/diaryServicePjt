<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--jsp파일에서 js파일로 코딩하면 jsp:include로 쉽게가져올수 있습니다. --%>
<script>
    
    function signupForm() {
    	console.log('signupForm()!!');
    	
    	let form = document.signup_form;
    	if (form.memId.value === '') {
    		alert('Please input new member ID!!');
    		form.memId.focus();
    		
    	} else if (form.memPw.value === '') {
    		alert('Please input new member PW!!');
    		form.memPw.focus();
    		
    	} else {
    		form.submit(); //<form의 action 속성에 입력한 주소로 데이터를 날립니다.
    	}
    }
    
</script>