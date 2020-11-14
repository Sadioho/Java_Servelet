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
<title>Insert title here</title>
</head>
<body>
<%
	String ms=request.getParameter("ms");
	String sltam=request.getParameter("txtsl");
	if(ms!=null){
		giohangbo gh=(giohangbo)session.getAttribute("gh");
		gh.Themm(ms,"", 0, Long.parseLong(sltam));
		session.setAttribute("gh", gh);
		response.sendRedirect("GiohangController");
	}
%>

</body>
</html>