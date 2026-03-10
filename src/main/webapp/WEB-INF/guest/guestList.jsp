<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("newLine", "\n"); %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>guestList.jsp</title>
  <%@ include file="/include/bs5.jsp" %>
  <link rel="stylesheet" type="text/css" href="${ctp}/css/orangeLink.css"/>
  <script>
    'use strict';
    
    function deleteCheck(idx) {
    	let ans = confirm("현재 게시글을 삭제하시겠습니까?");
    	if(ans) location.href = "GuestDelete.gu?idx="+idx;
    }
  </script>
  <style>
    th {
      background-color: #eee !important;
      text-align: center;
    }
  </style>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<jsp:include page="/include/nav.jsp" />
<p><br/></p>
<div class="container">
  <h2 class="text-center mb-3">방 명 록 리 스 트</h2>
  <table class="table table-borderless m-0 p-0">
    <tr>
      <td class="text-start">
        <a href="GuestInput.gu" class="btn btn-success btn-sm">글쓰기</a>
        <c:if test="${empty sAdmin}"><a href="GuestAdmin.gu" class="btn btn-primary btn-sm">관리자</a></c:if>
        <c:if test="${!empty sAdmin}"><a href="GuestAdminLogout.gu" class="btn btn-primary btn-sm">관리자 로그아웃</a></c:if>
      </td>
      <td class="text-end">
        <c:if test="${pag > 1}">
        	<a href="GuestList.gu?pag=1" title="첫페이지">◁◁</a>
        	<a href="GuestList.gu?pag=${pag-1}" title="이전페이지">◀</a>
        </c:if>
        <b>${pag}</b>/${totPage}
        <c:if test="${pag < totPage}">
        	<a href="GuestList.gu?pag=${pag+1}" title="다음페이지">▶</a>
        	<a href="GuestList.gu?pag=${totPage}" title="마지막페이지">▷▷</a>
        </c:if>
      </td>
    </tr>
  </table>
  <c:forEach var="vo" items="${vos}" varStatus="st">
  	<table class="table table-borderless m-0 p-0">
  	  <tr>
  	    <td>번호 : ${curScrStartNo} &nbsp;
  	      <c:if test="${!empty sAdmin}"><a href="javascript:deleteCheck(${vo.idx})" class="badge bg-danger">삭제</a></c:if>
  	    </td>
  	    <td class="text-end">방문IP : ${vo.clientIp}</td>
  	  </tr>
  	</table>
  	<table class="table table-bordered">
  	  <tr>
  	    <th>성명</th>
  	    <td>${vo.name}</td>
  	    <th>방문일자</th>
  	    <td>${vo.visitDate}</td>
  	  </tr>
  	  <tr>
  	    <th>메일주소</th>
  	    <td colspan="3">
  	      <c:if test="${empty vo.email || fn:length(vo.email)<=6 || fn:indexOf(vo.email, '.')==-1 || fn:indexOf(vo.email, '@')==-1}">- 없음 -</c:if>
  	      <c:if test="${!empty vo.email && fn:length(vo.email)>6 && fn:indexOf(vo.email, '.')!=-1 && fn:indexOf(vo.email, '@')!=-1}">${vo.email}</c:if>
  	    </td>
  	  </tr>
  	  <tr>
  	    <th>홈페이지</th>
  	    <td colspan="3">
  	      <c:if test="${empty vo.homePage || fn:length(vo.homePage)<=10 || fn:indexOf(vo.homePage, '.')==-1}">- 없음 -</c:if>
  	      <c:if test="${!empty vo.homePage && fn:length(vo.homePage)>10 && fn:indexOf(vo.homePage, '.')!=-1}"><a href="${vo.homePage}" target="_blank">${vo.homePage}</a></c:if>
  	    </td>
  	  </tr>
  	  <tr>
  	    <th>방문소감</th>
  	    <td colspan="3" style="height:180px">${fn:replace(vo.content, newLine, "<br/>")}</td>
  	    <%-- <td colspan="3" style="white-space: pre-wrap;">${vo.content}</td> --%>
  	  </tr>
  	</table>
  	<c:set var="curScrStartNo" value="${curScrStartNo - 1}"/>
  </c:forEach>
  
  <!-- 블록페이징 시작 -->
  <div class="text-center">
	  <c:if test="${pag > 1}">[<a href="GuestList.gu?pag=1">처음페이지</a>]</c:if>
	  <c:if test="${curBlock > 0}">[<a href="GuestList.gu?pag=${(curBlock-1)*blockSize+1}">이전블록</a>]</c:if>
	  <c:forEach var="i" begin="${(curBlock*blockSize)+1}" end="${(curBlock*blockSize)+blockSize}" varStatus="st">
	  	<c:if test="${i <= totPage && i == pag}">[<font color='red'><b>${i}</b></font>]</c:if>
	  	<c:if test="${i <= totPage && i != pag}">[<a href="GuestList.gu?pag=${i}">${i}</a>]</c:if>
	  </c:forEach>
	  <c:if test="${curBlock < lastBlock}">[<a href="GuestList.gu?pag=${(curBlock+1)*blockSize+1}">다음블록</a>]</c:if>
	  <c:if test="${pag < totPage}">[<a href="GuestList.gu?pag=${totPage}">마지막페이지</a>]</c:if>
  </div>
  <!-- 블록페이징 끝 -->
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>