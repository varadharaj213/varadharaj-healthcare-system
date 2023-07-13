<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
<meta charset="UTF-8">
<title>Medical Hospital Website Template</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<script type="text/javascript" src="js/msgDisplay.js"></script>
</head>
<body>
<%@ page import="java.util.List" %>
 <%@ page import="java.sql.*" %>
  <%@ page import="com.Connection.*" %>
 <%  PreparedStatement ps = null;
 	ResultSet resultSet= null;
Statement st=null;
PreparedStatement ps1 = null;
	ResultSet resultSet1= null;
Statement st1=null;
String query=null;

%>
<% HttpSession session1=request.getSession(false);  
String id=(String)session.getAttribute("id");  
HttpSession session2=request.getSession();
session.setAttribute("id", id);
%>
	<div class="background">
		<div class="page">
			<a href="index.html" id="logo">Shaji Hospital</a>
			<div class="sidebar">
				<ul>
					<li class="selected"><a href="index.html">Home</a></li>
					<li><a href="programs.html">Programs</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
				<div class="first">
					<div>
						<h3>Developer And Admin</h3>
						
						<p>Varadharaj-20BCA0057
						Shajitha- 20BCA0088</p>
					</div>
				</div>
				<div>
					<div>
						<h3>PharmEasy -Healthcare</h3>
						<p>Order Medicines online to home from India's Largest Pharmacy</p>
						<img src="images/doctors-and-nurse.jpg" alt="">
						<p>You can purchase medicines online & get it delivered to your home within 24-48 hours in select cities. Download the app now to take care of all your healthcare needs with an added discount.
PharmEasy has served over 50 lakh families for ordering medicines online.</p>
					</div>
				</div>
			</div>
			<div class="body">
				<div class="home">
					
						<img src="images/doctors.jpg" alt="">
						<div>
							
						</div>
					</div>
					<div>
						<div>
							<div>
								<h4>ID = <%=id %></h4>
								<h3>Welcome Sir</h3>
								

								<p>
					 <br />
		<a href="Logout?id=<%=id %>" title="" style="margin-left: 375px;"><font face="TimesNewRoman" color="blue" size="4">LogOut</font></a>

			
			
			<fieldset>
			 <legend>Messages </legend>
			<table border=2 style="width:100%">
			<tr bgcolor="yellow"><td>Patient ID</td><td>Name</td><td>Message</td><td>Reply</td></tr>
         <%
		
			
				query="select user_id,user_name,user_msg from messages where dr_id='"+id+"' and dr_msg='---'";
				ps1=Database.con().prepareStatement(query);
				resultSet1=ps1.executeQuery();
			    while(resultSet1.next())
			    {
			    %>
			    <tr>
			   <tr>
			    <td ><%=resultSet1.getString(1) %></td>
			    <td ><%=resultSet1.getString(2) %></td>
			    <td ><%=resultSet1.getString(3) %></td>
			   <td> <form action="Reply?id=<%=resultSet1.getString(1)%>&msg=<%=resultSet1.getString(3) %>" method="post" name="myform">
			   <textarea rows=3 cols=20 name="reply" id="reply"></textarea>
			   <input type="submit" value="Reply" name="sub"  /></form></td> 
			    </tr>
			    <%
			    	
			    }
           
         %>
            
         </table>
        
        
        
         </fieldset><br><br>
           
            <fieldset>
            <legend> Replied Messages </legend>
            <table border=2 style="width:100%">
			<tr bgcolor="yellow"><td>Patient ID</td><td>Name</td><td>Message</td><td>Reply</td></tr>
         <%
		
			
				String query1="select user_id,user_name,user_msg,dr_msg from messages where dr_id='"+id+"' and dr_msg!='---'";
				ps=Database.con().prepareStatement(query1);
				resultSet=ps.executeQuery();
			    while(resultSet.next())
			    {
			    %>
			    <tr>
			    <td><%=resultSet.getString(1) %></td>
			    <td><%=resultSet.getString(2) %></td>
			    <td><%=resultSet.getString(3) %></td>
			    <td><%=resultSet.getString(4) %></td>
			    </tr>
			    <%
				}
         %>
            
         </table>
            </fieldset>
						
      
								<br>
								<br>
								</p>
								
							</div>
							<div>
								
							</div>
						</div>
						<div>
							
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<div>
					<div>
						<h4>Blog</h4>
						<p>Health blogs are niche blogs that cover health topics, events and/or related content of the health industry and the general community.</p>
						<a href="blog.html">Go To Blog</a>
					</div>
					<div>
						<h4>Links</h4>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="programs.html">Programs</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="services.html">Services</a></li>
							<li><a href="blog.html">Blog</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
					<div class="connect">
						<h4>Keep In Touch</h4>
						<a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a>
						<a href="http://freewebsitetemplates.com/go/facebook/"
							id="facebook">facebook</a> <a
							href="http://freewebsitetemplates.com/go/googleplus/"
							id="googleplus">google+</a>
					</div>
				</div>
				<p>&#169; Copyright 2012. All rights reserved</p>
			</div>
		</div>
	</div>
</body>
</html>