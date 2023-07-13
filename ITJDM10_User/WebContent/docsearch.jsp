<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
<meta charset="UTF-8">
<title>Medical Hospital Website Template</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<%@ page import="java.util.List" %>
 <%@ page import="java.sql.*" %>
  <%@ page import="com.Connections.*" %>
 <%  PreparedStatement ps = null;
 	ResultSet resultSet= null;
Statement st=null;
PreparedStatement ps1 = null;
	ResultSet resultSet1= null;
	PreparedStatement ps2 = null;
	ResultSet resultSet2= null;
Statement st1=null;
String query=null;
%>
<% HttpSession session1=request.getSession(false);  
String id=(String)session.getAttribute("id");  
HttpSession session2=request.getSession();
session.setAttribute("id", id);
%>
<body>
	<div class="background">
		<div class="page">
			<a href="index.html" id="logo">Shaji Hospital</a>
			<div class="sidebar">
				<ul>
					<li class="selected"><a href="index.html">Home</a></li>
					<li><a href="programs.html">Programs</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="contact.html">Contact</a></li>
					<li><a href="index.html">LOGOUT</a></li>
					
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
PharmEasy has served over 50 lakh families for ordering medicines online.You can reorder your  medicines, return medicines for free.</p>
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
							<%
							String sql="select uname from user where id='"+id+"'";
						    
							ps2=Connections.con().prepareStatement(sql);
							resultSet2=ps2.executeQuery();
							
							if(resultSet2.next()){
							%>
								<h4>User ID=<%=id %> and Name=<%=resultSet2.getString(1) %>
								<%
								
								session.setAttribute("name", resultSet2.getString(1));
								}
							%></h4>
							<br><a href="search.jsp">Medicine Search</a>
								<br><br><a href="reviews.jsp">Reviews</a>
								
								<br><br>
								<h3>Doctors List</h3>

								
								<fieldset>
			
			<table border=2 style="width:100%">
			<tr bgcolor="yellow"><td>Doctor ID</td><td>Name</td><td>Specialist</td><td>Qualification</td><td>Experience</td><td>Gender</td><td>Status</td><td>Message</td></tr>
         <%
		
			String spec=request.getParameter("specialist");
				query="select id,name,specialist,qualification,experience,gender from doctor where specialist='"+spec+"'";
				ps1=Connections.con().prepareStatement(query);
				resultSet1=ps1.executeQuery();
			    while(resultSet1.next())
			    {
			    	String query1="select id,name from onlinedoctor where id='"+resultSet1.getString(1)+"'";
			    
					ps=Connections.con().prepareStatement(query1);
					resultSet=ps.executeQuery();
					System.out.println(query1);
			    %>
			    <tr>
			   <tr>
			    <td ><%=resultSet1.getString(1) %></td>
			    <td ><%=resultSet1.getString(2) %></td>
			    <td ><%=resultSet1.getString(3) %></td>
			    <td> <%=resultSet1.getString(4) %></td> 
			    <td> <%=resultSet1.getString(5) %></td>
			    <td> <%=resultSet1.getString(6) %></td> 
			    <%if(resultSet.next()){ %>
			     <td> <font color="green"><b><marquee scrolldelay="180">Online</marquee></b></font></td> 
			     <%}else
			    	 {
			    	 %><td><font color="red"><b>Offline</b></font></td> 
			    	 <%} %>
			   <td> <form action="messages.jsp?drid=<%=resultSet1.getString(1)%>&drname=<%=resultSet1.getString(2) %>" method="post">
			  
			 <input type="submit" value="MESSAGE" name="sub"/></form></td>
			    </tr>
			    <%
			    	
			    }
           
         %>
            
         </table>
        
         </fieldset>
         <br><br>
         
         
       

								<br>
								<br>
								
								
							
							
								
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