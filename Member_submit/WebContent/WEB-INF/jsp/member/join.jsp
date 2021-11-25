<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/head.jsp"/>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<section class="signup-section">
		
		<form method="post">
	        <label class="signup-label">ID</label>
	        <input class="signup-input" type="text" name="id" id="id" placeholder="아이디를 입력하세요">
	
	        <label class="signup-label">비밀번호</label>
	        <input class="signup-input" type="password" name="pwd" id="pwd"  placeholder="비밀번호를 입력하세요">
	
	        <label class="signup-label">비밀번호 확인</label>
	        <input class="signup-input" type="password" id="pwdck" placeholder="비밀번호 확인을 입력하세요">
	
	        <label class="signup-label">이메일</label>
	        <input class="signup-input" type="text" name="email" id="email" placeholder="이름을 입력하세요">
	
	        <label class="signup-label">이름</label>
	        <input class="signup-input" type="text" name="name" id="name"  placeholder="이름을 입력하세요">
	
	        <button class="signup-button" id="btnJoin">가입하기</button>
		</form>
    </section>
    <script>
	    $(function() {
			$("#btnJoin").click(function() {
				var id = $("#id").val();
				if(id) {
					$.ajax("idValid?id="+id, {
						success : function(data) {
							if(data/1) { 
								$("#id").next().text("");
							}
							else { 
								$("#id").next().text("이미 가입된 회원입니다")
							}
						}
					})
				}
				
				//event.preventDefault();
			})
		});
    </script>
    <jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>