<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import = "org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>An's Blog</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">


<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
   integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
   crossorigin="anonymous"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
   integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
   crossorigin="anonymous"></script>
<script src="/WebClass/js/myblog.js">
   
</script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/WebClass/css/myblog.css">

<!-- custom CSS -->
<link rel="stylesheet" href="/WebClass/css/custom.css">
<link href="https://fonts.googleapis.com/css?family=Lobster"
   rel="stylesheet">

</head>
<body class="bg">
   <!-- 메뉴바  -->
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Menu</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
         data-target="#navbarSupportedContent"
         aria-controls="navbarSupportedContent" aria-expanded="false"
         aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
         <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link" href="aboutme.html">About
                  Me <span class="sr-only">(current)</span>
            </a></li>
            <li class="nav-item"><a class="nav-link" href="food.html">Food<span
                  class="sr-only">(current)</span></a></li>
            <li class="nav-item"><a class="nav-link" href="interest.html">interest</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="dream.html">Dream</a>
            </li>
         </ul>
         <%
            UserVO user = (UserVO) session.getAttribute("user");
            if (user == null) {
         %>
         <ul class="nav justify-content-end">
            <li class="nav-item"><a class="nav-link"
               href="/WebClass/bloglogin" style="color: blue">Login</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="modal"
               data-target="#exampleModal" style="color: blue">Register</a></li>
         </ul>
                  <%
            } else {
         %>
                  <ul class="nav justify-content-end">
            <li class="nav-item dropdown"><a
               class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
               id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false"> <%=user.getName() + "님"%>
            </a>
            <div class="dropdown-menu dropdown-menu-right"
                  aria-labelledby="bd-versions">
                  <form action="/WebClass/bloglogout" method="post">
                     <button type="submit" class="dropdown-item">Sign out</button>
                  </form>
               </div></li>
         </ul>
         <%
            }
         %>
      </div>
   </nav>
   <div class="container">
      <h1 class="muc">Welcome to My Blog!</h1>

   </div>
   <!-- 로그인 모달 -->
   <div class="modal" id="myModal">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">로그인 결과</h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body"></div>
            <div class="modal-footer">

               <button type="button" class="btn btn-secondary"
                  data-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
   </div>
   <!-- 회원가입 모달 -->
   <div class="modal" id="regModal">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">회원가입</h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <form class="form-control mr-sm-2" id="registerForm">

                  <div class="btn-group" data-toggle="buttons">
                     <label class="btn btn-primary active"> <input
                        type="radio" name="grade" id="1">1학년 
                     </label> <label class="btn btn-primary"> <input type="radio"
                        name="grade" id="2">2학년 
                     </label> <label class="btn btn-primary"> <input type="radio"
                        name="grade" id="3">3학년 
                     </label>
                  </div>
                  <br> <br> <select class="custom-select" required>
                     <option value="">반을 선택하세요.</option>
                     <option value="1">1반 </option>
                     <option value="2">2반 </option>
                     <option value="3">3반 </option>
                     <option value="4">4반 </option>
                     <option value="5">5반 </option>
                     <option value="6">6반 </option>
                  </select> <br>
                  <br> <input type="text" id="number" placeholder=" 번호를 입력하세요."
                     required> <input type="text" id="name"
                     placeholder="이름을 입력하세요." required> 아이디<input type="text"
                     id="regid" style="margin-left: 44px; margin-bottom: 5px;"
                     placeholder="ID" required><br> 비밀번호<input
                     type="password" id="regpwd" style="margin-left: 30px"
                     placeholder="PWD" required>

                  <div id="buttons">
                     <button class="btn btn-primary" type="submit">Register</button>
                     <button type="button" class="btn btn-primary"
                        data-dismiss="modal">Close</button>
                  </div>
               </form>
            </div>

            <div class="modal-footer"></div>
         </div>
      </div>
   </div>

   <!--회원가입 확인 모달-->
   <div class="modal" id="checkModal">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">회원가입 결과</h5>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body"></div>
            <div class="modal-footer">

               <button type="button" class="btn btn-secondary"
                  data-dismiss="modal">Close</button>
            </div>
         </div>
      </div>
   </div>


</body>
</html>