<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>test1.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
  <script>
    'use strict';
    
    function fCheck(flag) {
    	if(flag == 1) {
    		alert("이곳은 flag값이 1입니다.");
    		//myform.submit();
    		return false;
    	}
    	else {
    		
    	}
    }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2>이곳은 test1.jsp(/WEB-INF/study2/test)</h2>
  <hr/>
  <div>전송 메세지 : ${msg}</div>
  <hr/>
  <form name="myform" method="post" action="${ctp}/mapping/Test1">
	  <div class="row">
	    <div class="col"><input type="submit" value="1.두수의 합/차" class="btn btn-success"/></div>
	    <div class="col"><input type="button" value="2.두수의 합/차" onclick="fCheck(1)" class="btn btn-primary"/></div>
	    <div class="col"><input type="button" value="0.새로고침" onclick="location.href='${ctp}/mapping/Test1'" class="btn btn-warning"/></div>
	  </div>
	  <hr/>
	  <div class="mb-2">su1 : <input type="number" name="su1" value="10" class="form-control"></div>
	  <div class="mb-2">su2 : <input type="number" name="su2" value="20" class="form-control"></div>
	  <input type="hidden" name="msg" value="test1.jsp(합/차)" />
  </form>
  <hr/>
  <div>
    <div>두수의 합 : ${hap}</div>
    <div>두수의 차 : ${cha}</div>
  </div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>