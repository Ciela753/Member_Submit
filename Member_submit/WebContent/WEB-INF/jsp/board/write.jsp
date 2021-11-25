<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/head.jsp"/>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	<section class="write-section">
        <div class="write-div">
        	<form method="post" enctype="multipart/form-data">
	            <table class="write-table">
	                <tr>
	                    <td><input class="write-input-text" type="text" name="title" placeholder="내용을 입력해주세요"></td>
	                </tr>
	                <tr>
	                    <td><input class="write-input-text" type="file" name="filed1" placeholder="내용을 입력해주세요"></td>
	                </tr>
	                <tr>
	                    <td><input class="write-input-text" type="file" name="field2" placeholder="내용을 입력해주세요"></td>
	                </tr>
	                <tr>
	                    <td><input class="write-input-text" type="file" name="filed3" placeholder="내용을 입력해주세요"></td>
	                </tr>
	                <tr>
	                    <td><textarea class="write-textarea" name="content" placeholder="내용을 입력해주세요"></textarea></td>
	                </tr>
	                <tr>
	                	<td><button>작성</button></td>
	                </tr>
	            </table>
        	</form>
        </div>            
     </section>
     <jsp:include page="../common/footer.jsp" />
</body>
</html>