<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/head.jsp"/>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<main class="login">
		<form method="post">
			<fieldset>
			<section class="signin-section">
		        <label class="signin-label">ID</label>
		        <input class="signin-input" type="text" name="id" id="id" placeholder="아이디를 입력하세요">
		
		        <label class="signin-label">비밀번호</label>
		        <input class="signin-input" type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요">
			
				<p><lable><input type="checkbox" name="saveId" id="saveId">아이디 저장</lable></p>
		        <button class="btn btn-outline-warning mt-1">로그인</button>
		    </section>			
			</fieldset>
		</form>	
		<h3>${param.msg}</h3>    
	</main>
	<jsp:include page="../common/footer.jsp"/>
		<script>		
		$(function() {
			if($.cookie("savedId")) {
				$("#id").val($.cookie("savedId"));
				$("#savedId").prop("checked", true);
			}
		});			
		</script>
</body>
</html>