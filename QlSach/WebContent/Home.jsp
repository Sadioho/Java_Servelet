<%@page import="bo.giohangbo"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@page import="java.util.ArrayList"%>
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
              <a class="nav-link" href="GiohangController"><i class="fas fa-cart-arrow-down">
              <%=s %>
              </i>
              </a>
            
            </li>
             <%--  <% giohangbo gh=(giohangbo)session.getAttribute("gh");%>
           	<% if (gh==null){ %>
           	<div>0</div>
           	<%} %>
           	<%if(gh!=null){ %>
           	<div> <%=gh.ds.size() %> </div>
           	<%} %> --%>
           	
          
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#">Đăng nhập</a>
            </li>
            <li class="nav-item">
			 <!--  <button type="button" class="btn btn-primary" > -->
			  		<a class="nav-link" type="button" data-toggle="modal" data-target="#exampleModalCenter">Đăng Ký</a>
				<!-- Modal -->
				<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				  <div class="modal-dialog modal-dialog-centered" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="exampleModalLongTitle">Điền thông tin đăng ký</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				        <form>
						  <div class="form-row">
						    <div class="form-group col-md-6">
						      <label for="inputEmail4">Email/Số điện thoại</label>
						      <input type="email" class="form-control" id="inputEmail4" placeholder="Email hoặc số điện thoại">
						    </div>
						    <div class="form-group col-md-6">
						      <label for="inputPassword4">Mật khẩu</label>
						      <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
						    </div>
						      <div class="form-group col-md-6">
						      <label for="inputPassword4">Xác nhận mật khẩu</label>
						      <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
						    </div>
						  </div>
						  <button type="submit" class="btn btn-primary">Đăng ký</button>
						</form>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				      </div>
				    </div>
				  </div>
				</div>
            </li>
          </ul>
        </nav>
      </div>
      
      <!-- Loai sach -->
<div class="row">

<%
	loaibo lbo=new loaibo();
	ArrayList<loaibean> ds2=lbo.getloai();
	int a=ds2.size();	
%>
<div class="col-3">
 	<nav class="navbar navbar-light bg-light">
            <form class="form-inline m-auto" action="HomeController" method="post">
	              <input
	                class="form-control mr-sm-2"
	                type="search"
	                placeholder="Search..."
	                name="txttk"
	                
	              />
	              <button
	                class="btn btn-outline-success my-2 my-sm-0"
	                type="submit"
	              >
	                Search
	              </button>
            </form>
	</nav>
	<% for(int i=0;i<a;i++){ %>
	<div class="list-group">
	     <a href="HomeController?maloai=<%=ds2.get(i).getMaloai()%>" class="list-group-item list-group-item-action list-group-item-light">
	     <%=ds2.get(i).getTenloai() %>
	     </a>
	</div>
	<%}%>			
</div>
    <!-- Content -->
    <div class="col-9"> 	  
      <%
	/* 	sachbo sbo=new sachbo();
		ArrayList<sachbean> ds=sbo.getsach();
		String ml = request.getParameter("maloai");
		if (ml != null)
			ds = sbo.TimSachTheoMa(ml);
		String key = request.getParameter("txttk");
		if (key != null)
			ds = sbo.TimSach(key); */
			ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("loaisach");
			ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("ds");
			int n=ds.size();
		%>     
    	<div class=container-card>

	<% for(int i=0;i<n;i++){ %>
	<div class="card" >
	<% sachbean ss=ds.get(i); %>
		<img  class="card-img-top" alt="" src="<%=ss.getAnh() %>">
		<div class="card-body">
		 <h6 class="card-title"><%=ss.getTensach() %></h6>
		 <p class="card-text"><%=ss.getTacgia() %></p>
		  <p class="card-text">Giá:<%=ss.getGia() %> VND</p>
		<a href="DatMuaController?ms=<%=ss.getMasach()%>&ts=<%=ss.getTensach()%>&gia=<%=ss.getGia()%>"> <img alt="" src="buynow.jpg">
	 </a> 
		</div>
	</div>
	<%} %>
    	
    	</div>
    	

    </div>
 


</div>
      
      
      

</div>

</body>
</html>