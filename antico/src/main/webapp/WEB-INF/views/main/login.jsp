<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx_path" value="${pageContext.request.contextPath}" />
    
<jsp:include page=".././header/header.jsp" />    

<div style="width:25%; margin:0 auto 10% auto;">

	
	<div style="width:100%; margin:0 auto 0 auto; text-align: center;">
		<img class="main_logo" src="${pageContext.request.contextPath}/images/logo/logo_black.svg" width="200"/>
	</div>
	
	<div class="" style="width:100%; margin:4% auto 10% auto; border: solid 1.5px #E6E6E6; border-radius: 3%; padding: 20px 20px">
		
		<div class="textSpan">
			<span class="block">중고나라에 오신 것을</span>
			<span>환영합니다.</span>
		</div>
		<form action="${ctx_path}/auth/login" method="post" id="login_form">
		<div style="padding:8% 2% 1% 2%; width:100%;">
			
			<c:if test="${not empty member_user_id}">
			<input type="text" name="member_user_id" class="textbox" placeholder="아이디" value="${member_user_id}"/>
			</c:if>
			<c:if test="${empty member_user_id}">
			<input type="text" name="member_user_id" class="textbox" placeholder="아이디" "/>
			</c:if>
				
		</div>
		<div style="padding:1% 2% 1% 2%;">
			<c:if test="${not empty member_passwd}">
				<input type="text" name="member_passwd" class="textbox" placeholder="비밀번호" value="${member_passwd}"/>
			</c:if>
			<c:if test="${empty member_passwd}">
				<input type="text" name="member_passwd" class="textbox" placeholder="비밀번호"/>
			</c:if>
		</div>		
		
				
		<div style="padding:1% 2% 1% 2%;">
			<button type="submit" name="loginBtn" class="BtnStyle">로그인</button>
		</div>	
		
			
		
		</form>
		<div style="width:100%; margin: 150px 0 3% 0; text-align: center;">
			<img id="kakaoImg" src="${pageContext.request.contextPath}/images/login/kakao.png" width="95%"/>
			
		</div>
		<div style="width:100%; text-align: center; padding-bottom: 3%;">
			<img id="naverImg" src="${pageContext.request.contextPath}/images/login/naver.png" width="95%"/>
		</div>	
		<div style="width:100%; text-align: center; padding-bottom: 3%;">
			<img id="googleImg" src="${pageContext.request.contextPath}/images/login/naver.png" width="95%"/>
		</div>			
		<div style="padding:1% 2% 1% 2%;">
			<button type="button" class="BtnStyle" onclick="location.href='${pageContext.request.contextPath}/member/register'">회원가입하기</button>
		</div>
		
	<p id="token-result"></p>
	<button class="api-btn" onclick="requestUserInfo()" style="visibility:hide">사용자 정보 가져오기</button>
	</div>
	
	


</div>



<style type="text/css">

*{
font-family: "Pretendard Variable", Pretendard, -apple-system, BlinkMacSystemFont, system-ui, Roboto, "Helvetica Neue", "Segoe UI", "Apple SD Gothic Neo", "Noto Sans KR", "Malgun Gothic", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
}

.BtnStyle{
	width:100%;
	padding: 10px;
	border-radius: 8px;
	border:0px;
}
.textbox{
	width:100%;
	border: solid 1px #E6E6E6;
	border-radius: 7px;
	font-size: 12pt; 
	padding:10px;
	
}
.block{
	display: block;
}

.textSpan > span{
	font-size: 1.5rem;
	line-height: 2rem;
}
.marginBt{
	
	margin-bottom: 15%; 
}
#kakaoImg{
	border-radius: 6px;
}
</style>

<script type="text/javascript">
Kakao.init('61202bdbe397ec06765ee5a7cb40b414');
</script>

<script type="text/javascript">
$(document).ready(function(){
	
	$("img#kakaoImg").bind("click", function(){
		
		location.href='${pageContext.request.contextPath}/oauth2/authorization/kakao';
		
	});
	
	$("img#naverImg").bind("click", function(){
		
		location.href='${pageContext.request.contextPath}/oauth2/authorization/naver';
		
	});
	
	$("img#googleImg").bind("click", function(){
		
		location.href='${pageContext.request.contextPath}/oauth2/authorization/google';
		
	});
	
	$("#loginBtn").bind("click",function(){
		
		submit();
		
	});
	
});

</script>

<jsp:include page=".././footer/footer.jsp" />