<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="head.jsp"></jsp:include>
</head>
<body>
	<div>
	<jsp:include page="header.jsp"></jsp:include>
	<aside class="index-aside">
		<c:choose>
			<c:when test="${empty member}">
				<form  action="login">
					<input class="index-round" type="submit" value="로그인">
				</form>
				<p><a href="join">회원가입</a> <a href="#">ID/PW찾기</a></p>
			</c:when>
			<c:otherwise>
        	<p>${member.name}님 환영합니다.</p>
            <p><a href="join">정보수정</a> <a href="logout">로그아웃</a></p>
        	</c:otherwise>
		</c:choose>
	</aside>
	
	<article class="index-middle-banner">
		<div class="slider">
                	<img alt="daisies" src="${pageContext.request.contextPath}/images/daisies.jpg">
                	<img alt="plant" src="${pageContext.request.contextPath}/images/plant.jpg">
                	<img alt="succulents" src="${pageContext.request.contextPath}/images/succulents.jpg">
        </div>
        <section>
            <h2 class="display-6">자유 게시판</h2>
            <ul class="row justify">
            <c:forEach items="${list}" var="b">
                <li class="col-5 m-2 ">         
                <a href="board/detail?bno=${b.bno}">
                    <div>
                        <h4 class="text-truncate small"><c:out value="${b.title}" escapeXml="true"></c:out> </h4>
                        <p class="text-truncate text-muted small"><c:out value="${b.content}" escapeXml="true"></c:out></p>
                    </div>
                </a>           
                </li>
            </c:forEach>
            </ul>
        </section>
                
    </article>
    <script>
    $(function() {
    	$(".slider").bxSlider({
    		mode: 'fade',
    		pager: false, 
    		controls: false,
    		auto:true
    	});
    })
    </script>
    <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>