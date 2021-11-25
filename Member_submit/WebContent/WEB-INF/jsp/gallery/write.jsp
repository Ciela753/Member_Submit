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
	                    <td><input type="file" name="filed1" accept="image/png, image/jpeg, image/gif"  ></td>
	                </tr>
	                <tr>
	                    <td><input type="file" name="filed2" accept="image/png, image/jpeg, image/gif" ></td>
	                </tr>
	                <tr>
	                    <td><input type="file" name="filed3" accept="image/png, image/jpeg, image/gif" ></td>
	                </tr>
	                <tr>
	                	<td colspan="2">
				            <div class="write-div-button">        	
				                <button>작성</button>
				            </div>                	
	                	</td>
	                </tr>
	            </table>
        	</form>
        </div>            
     </section>
</body>
</html>