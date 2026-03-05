<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>exam01.jsp</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
  <p>콤보상자와 리스트박스안에 그림파일명(11.jpg ~ 20.jpg)을 표시시켜주고, 해당 그림을 클릭하면 아이디 demo 선택한 그림을 출력시키시오</p>
</div>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>exam01.jsp</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
  <p>콤보상자와 리스트박스안에 그림파일명(11.jpg ~ 20.jpg)을 표시시켜주고, 해당 그림을 클릭하면 아이디 demo 선택한 그림을 출력시키시오</p>
  
  <div class="row">
    <div class="col">
      <label for="combo">콤보상자:</label>
      <select id="combo" class="form-select" onchange="imgShow(this.value)">
        <option value="">그림 선택</option>
      </select>
    </div>
    <div class="col">
      <label for="list">리스트박스:</label>
      <select id="list" size="10" class="form-select" onchange="imgShow(this.value)"></select>
    </div>
  </div>

  <hr/>
  
  <div id="demo" class="text-center border p-3" style="min-height: 200px;">
    <h5>출력창(demo)</h5>
    <img src="" id="targetImg" style="max-width:400px; display:none;" class="img-thumbnail" />
  </div>
</div>

<script>
  // DOM이 모두 로드된 후 실행되도록 script를 하단에 배치하거나 window.onload 사용
  window.onload = function() {
    const combo = document.getElementById("combo");
    const list = document.getElementById("list");
    const path = "${pageContext.request.contextPath}/images/"; // 이미지 폴더 경로 설정

    for(let i=11; i<=20; i++) {
      let fileName = i + ".jpg";
      
      // 옵션 생성
      let opt = document.createElement("option");
      opt.value = path + fileName; // 경로를 포함한 값을 value에 저장
      opt.text = fileName;
      
      combo.add(opt);
      list.add(opt.cloneNode(true)); // 리스트박스에도 복사해서 추가
    }
  };

  function imgShow(fPath) {
    if(fPath == "") return;
    
    const target = document.getElementById("targetImg");
    target.src = fPath; 
    target.style.display = "inline-block"; // 선택 시 보이기
  }
</script>
</body>
</html>