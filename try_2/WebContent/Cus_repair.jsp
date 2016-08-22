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
<%String cust_id=(String)request.getAttribute("cust_id"); %>
<%
ResultSet rs;
PreparedStatement pst;

		ToConnect cn=new ToConnect();
		Connection con=cn.getConnection();
		pst=con.prepareStatement("insert into complaint values(comp_sequence.nextval(),?,?,?)");
		pst.setString(2, cust_id);
		pst.setString(3,"DSL");
		//pst=con.prepareStatement("select * from CUSTOMERS");
		//rs=pst.executeQuery();
		%>
<form action="Successful.html" method="post">
Where is your problem? <br/>
<input type="radio" name="type" value="FIOS"/>Fios<br/>
<input type="radio" name="type" value="DSL"/>DSL<br/>
<input type="radio" name="type" value="HOME_PHONE"/>Home phone<br/>
<input type="radio" name="type" value="MOBILE"/>Mobile<br/><br/>
<input type="submit" value="Register Complaint"/>
</form>
</div>
				</div>
			</article>
			
			
			
	
	</body>
</html>
