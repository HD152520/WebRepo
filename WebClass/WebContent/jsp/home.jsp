<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
  <title>Bootstrap ì¤ìµ</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/footer.css">
 <script>
 function menu_over(e) {
	 e.SetAttribute("class","nav-item active"); //<li class="nav-i">
 }
 function menu_out(e) {
	 e.setAttribute("class","nav-item");
	 
 }
 
 
 </script>
 <style>
 div.container {
 padding-top: 30px;
 
 
 }
 </style>
  </head>
  <body>
  <!-- ë©ë´ë° -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <%@ include file = "menu.jsp" %>
    <form class="form-inline my-2 my-lg-0" id = "LoginForm">
      <input class="form-control mr-sm-2" type="id" placeholder="ID" aria-label="ID" id="id" required>
      <input class="form-control mr-sm-2" type="pwd" placeholder="PWD" aria-label="PWD" id="pwd" required>
      
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
  </div>
</nav>
<div class="container">
    <h1>Hello, Bootstrap</h1>
<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee
</p>
</div>

<%@ include file = "modal.jsp" %>
<%@ include file = "footer.jsp" %>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
  <script>
  $(document).ready(function () {
	  $('#LoginForm').submit(function (event) {
		  //submitì´ ìëì¼ë¡ ëë ê¸°ë¥ì ë§ê¸°
		  event.preventDefault();
		  
		  //id, pwdê°ì ¸ì¤ê¸°
		//  document.getElementById("id").value
		var id = $('#id').val();
		var pwd = $('#pwd').val();
		console.log(id,pwd);
		
		//ìë²ë¡ post ì ì¡(ajax)
		$.post("/WebClass/login",
				{"id" : id, "pwd" : pwd},
				function(data) {
					//alert(data.form.id + 'ë ë¡ê·¸ì¸ëììµëë¤.');
					var myModal = $('#myModal');
					myModal.modal();
					myModal.find('.modal-body').text(data.id + '님 로그인 되었습니다.');
				});
	  });
  });
  //ê°ë¨íê²ì°ê¸°
  $(function() {
	  
  })
  </script>
  </body>
</html>