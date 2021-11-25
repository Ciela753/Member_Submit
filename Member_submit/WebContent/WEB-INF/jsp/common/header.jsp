<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
        <div class="index-banner">
            <a href="<%=request.getContextPath()%>/index.html"><img class="index-image" src="${pageContext.request.contextPath}/images/young-people-resize(1).jpg" alt="images/young-people-resize(1).jpg"></a>
            <p class="index-text-left">사이트 간략 소개</p>
        </div>
        <div class="index-list-background">
            <nav>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/board/list">공지사항</a></li>
                    <li><a href="${pageContext.request.contextPath}/board/list">자유 게시판</a></li>
                    <li><a href="${pageContext.request.contextPath}/gallery/list">갤러리</a></li>
                </ul>
            </nav>
        </div>
    </header>