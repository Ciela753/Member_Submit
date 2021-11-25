<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/head.jsp" />
</head>
<body>
<jsp:include page="../common/header.jsp" />
<section class="gallery-section">
        <section>
         <c:set var="endCount" value="${page.cri.amount-(page.cri.amount-1) % 3 + 2 }"/>
        <c:forEach begin="1" end="${endCount}" varStatus="stat">
        	<c:set var="board" value="${list[stat.index-1] }"/>
        	<c:if test="${stat.index % 3==1 }">
        	
        	</c:if>
        	
        	<c:if test="${not empty board}">
				<div class="gallery-div-size">
					<img class="gallery-img" src="${pageContext.request.contextPath}/display?filename=${board.attachs[0].path}/s_${board.attachs[0].uuid}" alt="images/concert-resize.jpg">
					<a href="detail?bno=${board.bno}">${board.title}</a>
				</div>
	        </c:if>
        	</div>
        	<c:if test="${stat.index % 3 == 0}">
		</div>
		</c:if>
        </c:forEach>
        <ul class="pagination justify-content-end">
				<li class="page-item ${page.prev ? '' : 'disabled'}">
					<a class="page-link" href="list?pageNum=${page.startPage-1}&amount=${page.cri.amount}">Previous</a>
				</li>
			  	
			  	<c:forEach begin="${page.startPage}" end="${page.endPage}" var="p">
			  	<li class="page-item ${p == page.cri.pageNum ? 'active' : ''}">
			  		<a class="page-link " href="list?pageNum=${p}&amount=${page.cri.amount}">${p}</a>
			  	</li>
			  	</c:forEach>
			  	
			  	<li class="page-item ${page.next ? '' : 'disabled'}">
			  		<a class="page-link" href="list?pageNum=${page.endPage+1}&amount=${page.cri.amount}">Next</a>
			  	</li>
			</ul>
			<a href="write"><button class="btn btn-primary float-right">글쓰기</button></a></td>
			<c:if test="${not empty member}">
			</c:if>
       </section>
    </section>
</body>
</html>