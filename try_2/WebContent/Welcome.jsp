<!DOCTYPE html>
<html lang="en">
	<head>
		<title></title>
		<meta charset="utf-8">
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
		<script type="text/javascript" src="js/jquery-1.6.js" ></script>
		<script type="text/javascript" src="js/cufon-yui.js"></script>
		<script type="text/javascript" src="js/cufon-replace.js"></script>  
		<script type="text/javascript" src="js/Vegur_300.font.js"></script>
		<script type="text/javascript" src="js/PT_Sans_700.font.js"></script>
		<script type="text/javascript" src="js/PT_Sans_400.font.js"></script>
		<script type="text/javascript" src="js/atooltip.jquery.js"></script><%@page import="servlets.ToConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.sql.*" %>
    
	</head>
	<body id="page3">
		<div class="main">
<!--header -->
			<header>
				<div class="wrapper">
					<h1><a href="index.html" id="logo">Verizon</a></h1>
					<form id="search" method="post">
						<fieldset>
							<div class="bg"><input class="input" type="text" value="Search"  onblur="if(this.value=='') this.value='Search'" onFocus="if(this.value =='Search' ) this.value=''" ></div>
						</fieldset>
					</form>
				</div>
				<nav>
					<ul id="menu">
						<li><a href="index.html"><span>Homepage</span></a></li>
						<li><a href="Company.html"><span>Company</span></a></li>
						<li><a href="Services.html"><span>Products</span></a></li>
						<li class="active"><a href="Solutions.html"><span>Login</span></a></li>
						<li class="last"><a href="Contacts.html"><span>Contacts</span></a></li>
					</ul>
				</nav>
			</header>
    <article id="solution"><div class="ic">More Website Templates @ TemplateMonster.com - November 14, 2011!</div>
				<div class="wrapper">
			<div class="col2 marg_right1">
			<h1>
				Welcome back !
			</h1>
<%
ResultSet rs;
PreparedStatement pst;


		ToConnect cn=new ToConnect();
		Connection con=cn.getConnection();
		String user_name=(String)request.getAttribute("username");
		pst=con.prepareStatement("select * from CUSTOMERS where username =?");
		//out.println(user_name);
		pst.setString(1,user_name);
		rs=pst.executeQuery();
		%>
		<%while(rs.next()){ %>
<br/>
<br/><br/><br/>
			<table border="1" cellspacing="7" cellpadding="0">
			<tr>
				<td><b>Name</b></td>	
				<td><b><%=rs.getString(1)%></b></td>
			</tr>
			<tr>
				<td><b>CUSTOMER ID</b></td>	
				<td><b><%=rs.getString(2)%></b></td>
				<%request.setAttribute("cust_id", rs.getString(2)); %>
			</tr>
			<tr>
				<td><b>PHONE NUMBER&nbsp;&nbsp;&nbsp;</b></td>	
				<td><b><%=rs.getString(5)%></b></td>
			</tr>
			<tr>
				<td><b>ADDRESS</b></td>	
				<td><b><%=rs.getString(6)%></b></td>
			</tr>
			<tr>
				<td><b>FIOS</b></td>	
				<td><b><%=rs.getString(7)%></b></td>
			</tr>
			<tr>
				<td><b>DSL</b></td>	
				<td><b><%=rs.getString(8)%></b></td>
			</tr>
			<tr>
				<td><b>HOME PHONE</b></td>	
				<td><b><%=rs.getString(9)%></b></td>
			</tr>
			<tr>
				<td><b>MOBILE</b></td>	
				<td><b><%=rs.getString(10)%></b></td>
			</tr>	
</table>
<%} %>

How may we help you? <br/>
<a href="Cus_repair.jsp"> Repairs </a><br/>
<a href="Cus_newconnection.jsp"> New Connection </a><br/>
<a href="Contacts.html"> Complains </a><br/>
<a href="Contacts.html"> Suggestion </a><br/>
</div>
				</div>
			</article>
			
			
			
	
	</body>
</html>
