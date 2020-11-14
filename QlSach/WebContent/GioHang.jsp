<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous" />

    <link rel="stylesheet" href="style.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.card{
width: 12rem;
}
.card-body p {
  margin: 0;
}
.card-body a {
  display: flex;
  justify-content: center;
  margin-top: 10px;
}
.container-card {
  display: flex;
  justify-content: space-evenly;
  flex-wrap: wrap;
}
.container-card .card {
 margin-top: 10px;
}
.card-img-top{
height: 260px;

}

.form-inline .form-control{
width: 140px}

</style>
</head>

<body>

<div class="container">


<div class="text-center">
	<h1>NHÀ SÁCH HOÀNG HÀ</h1>

</div>
  	<% 	giohangbo gh1=(giohangbo)session.getAttribute("gh"); 	
	           	long s=0; 		
	           	long tt=0; 		
	           	if(gh1!=null){ 				
	           	s  = gh1.sumOfAmount(); 				
	           	tt = gh1.Tong();
           	} 					
           	%>
 <div class="menu">
        <nav
          class="navbar navbar-expand-sm navbar-dark bg-secondary justify-content-between"
        >
          <!-- Brand/logo -->

          <!-- Links -->
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="HomeController">Trang chủ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="GiohangController"><i class="fas fa-cart-arrow-down"><%=s%></i
              ></a>
            </li>
          
         
           	
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#">Đăng nhập</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Đăng ký</a>
            </li>
          </ul>
        </nav>
      </div>
      

		<table class="table table-hover table-border">
		
			<%
				giohangbo gh=(giohangbo)session.getAttribute("gh");
				if(gh!=null){
				for(giohangbean g:gh.ds){
			%>		
			<tr>
				<td><%=g.getMasach() %></td>
				<td><%=g.getTensach() %></td>
				<td>
				<%-- <%=g.getSoluong() %> --%>
				<form action="SuaController?ms=<%=g.getMasach() %>" method="post">
				<input type="number" name="txtsl" min=1 value="<%=g.getSoluong()%>"> <br>
				 <input type="submit" name="but1" value="update">
				</form>
				</td>
				<td><%=g.getGia() %></td>
				<td><%=g.getThanhtien() %></td>
				<td><a href="XoaController?ms=<%=g.getMasach()%>">Delete</a></td>
			</tr>
			<% 	}
				
			}%>
		
		</table>
		<div align="right">Tổng tiền: <%=tt%></div> 




</body>
</html>