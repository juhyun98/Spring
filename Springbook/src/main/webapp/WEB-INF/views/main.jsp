<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>Spring Book</h2>
		<div class="panel panel-default">
			<div class="panel-heading">Book</div>
			<div class="panel-body">
				<table id="bookList" class="table table-bordered table-hover">
					<tr class="active">
						<td>번호</td>
						<td>제목</td>
						<td>작가</td>
						<td>출판사</td>
						<td>isbn</td>
						<td>보유도서수</td>
						<td>삭제</td>
						<td>수정</td>
					</tr>
					<tbody id="view">
						<!-- 비동기 방식으로 가져온 게시글 나오게할 부분 -->
					</tbody>
					
					<tr>
						<td colspan="5">
							<button onclick="goForm()" class="btn btn-primary btn-sm">도서등록</button>
						</td>
					</tr>
				</table>
			</div>

			<!-- 글쓰기 폼 -->
			<div class="panel-body" id="wform" style="display: none;">
				<form id="frm">
					<table class="table">
						<tr>
							<td>제목</td>
							<td><input type="text" name="title" class="form-control"></td>
						</tr>
						<tr>
							<td>작가</td>
							<td><input type="text" class="form-control" name="author"></td>
						</tr>
						<tr>
							<td>출판사</td>
							<td><input type="text" name="company" class="form-control"></td>
						</tr>
						<tr>
							<td>isbn</td>
							<td><input type="text" name="isbn" class="form-control"></td>
						</tr>
						<tr>
							<td>보유도서수</td>
							<td><input type="number" name="count" class="form-control"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button class="btn btn-success btn-sm" type="button"
									onclick="goInsert()">등록</button>
								<button class="btn btn-warning btn-sm" type="reset" id="fclear">취소</button>
								<button onclick="goList()" class="btn btn-info btn-sm">리스트로가기</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
			
			<!-- 글 수정 폼 -->
			<div class="panel-body" id="wfrm" style="display: none;">
				<form id="form">
					<table class="table">
						<tr>
							<td>제목</td>
							<td><input disabled="disabled" type="text" name="title" class="form-control" value="${bookList.title}"></td>
						</tr>
						<tr>
							<td>작가</td>
							<td><input disabled="disabled" type="text" class="form-control" name="author"></td>
						</tr>
						<tr>
							<td>출판사</td>
							<td><input disabled="disabled" type="text" name="company" class="form-control"></td>
						</tr>
						<tr>
							<td>isbn</td>
							<td><input disabled="disabled" type="text" name="isbn" class="form-control"></td>
						</tr>
						<tr>
							<td>보유도서수</td>
							<td><input type="number" name="count" class="form-control"></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button class="btn btn-success btn-sm" type="button"
									onclick="goUpdate()">수정</button>
								<button class="btn btn-warning btn-sm" type="reset" id="fclear">취소</button>
								<button onclick="goList()" class="btn btn-info btn-sm">리스트로가기</button>
							</td>
						</tr>
					</table>
				</form>
			</div>

			<div class="panel-footer">스프링게시판 - 박병관</div>
		</div>
	</div>

	<script type="text/javascript">
      $(document).ready(function(){
         // HTML이 다 로딩되고나서 아래 코드실행
         loadList();
      });
   
   
      function loadList(){
         // 비동기방식으로 게시글 리스트 가져오기 기능
         // ajax - 요청 url, 어떻게 데이터 받을지, 요청방식 등... -> 객체
         $.ajax({
            url : "book/all",
            type : "get",
            dataType : "json",
            success : makeView, // 콜백함수
            error : function() { alert("error"); }
         });
      }
      
      function makeView(data){
         
         var listHtml = "";
         $.each(data, function(num, obj){
            listHtml += "<tr>";
            listHtml += "<td>" + (num + 1) + "</td>";
            listHtml += "<td id='t" + obj.num + "'>";
            listHtml += obj.title;
            listHtml += "</a>";
            listHtml += "</td>";
            listHtml += "<td id='w" + obj.num + "'>" + obj.author + "</td>";
            listHtml += "<td>" + obj.company + "</td>";
            listHtml += "<td>" + obj.isbn + "</td>";
            listHtml += "<td>" + obj.count + "</td>";
            listHtml += "<td><button onclick='goDelete(" + obj.num + ")' class='btn btn-sm btn-primary'>삭제</button> &nbsp;</td>"
            listHtml += "<td><button onclick='goUpdateForm(" + obj.num + ")' class='btn btn-sm btn-warning'>수정</button></span> &nbsp;</td>"
            listHtml += "</tr>";
            
            
            // 수정 삭제 화면
            listHtml += "<br>";
            listHtml += "<span id='ub"+ obj.num +"'>";
            listHtml += "<button onclick='goUpdateForm(" + obj.num + ")' class='btn btn-sm btn-success'>수정화면</button></span> &nbsp;"
            listHtml += "<button onclick='goDelete(" + obj.num + ")' class='btn btn-sm btn-warning'>삭제</button> &nbsp;"
            listHtml += "</td>";
            listHtml += "</tr>";
         });   
         
         $("#view").html(listHtml);
         
         goList();
         
      }
      
      // goForm 함수를 만들어서 view는 감추고 wform은 보이게하시오
      function goForm(){
         $("#bookList").css("display", "none");
         $("#wform").css("display", "block");
      }
      
      function goList(){
         $("#bookList").css("display", "table-row");
         $("#wform").css("display", "none");
      }
      
      function goInsert(){
         // 게시글 등록기능 - 비동기
         // title="안녕"&content="반가워"&writer="호두아빠"
         var fData = $("#frm").serialize();
         
         $.ajax({
            url : "book/new",
            type : "post",
            data : fData,
            success : loadList,
            error : function() { alert("error") }
         });
         
         $("#fclear").trigger("click");
      }
      
      
      
      function goDelete(num){
         $.ajax({
            url : "book/" + num,
            type : "delete",
            data : {"num" : num},
            success : loadList,
            error : function() { alert("error"); }      
         });
      }
      
      function goUpdateForm(num){
    	 $("#bookList").css("display", "none");
         $("#wfrm").css("display", "block");
         $("#ta" + num).attr("readonly", false);
         
         var title = $("#t" + num).text();
         var newTitle = "<input id='nt"+num+"' value='" + title + "' type='text' class='form-control' >";
         $("#t" + num).html(newTitle);
         
         var author = $("#w" + num).text();
         var newAuthor = "<input id='nw"+num+"' value='" + author + "' type='text' class='form-control' >";
         $("#w" + num).html(newWriter);
         
         var newBtn = "<button onclick='goUpdate("+idx+")' class='btn btn-primary btn-sm'>수정</button>";
         $("#ub" + num).html(newBtn);
         
      }
      
      function goUpdate(num){
    	 var fData = $("#form").serialize();
         var count = $("#nt" + num).val();
         
         $.ajax({
        	 url : "book/update",
        	 type : "put",
        	 contentType : "application/json;charset=utf-8",
        	 data : JSON.stringify({"count" : count}),
        	 success : loadList,
        	 error : function() { alert("error"); }
         });
         
      }
      
      
      
      
      
   </script>

</body>
</html>

