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
Statement st1=null;
String query=null;
%>
<% HttpSession session1=request.getSession(false);  
String mobile=(String)session.getAttribute("mobile");  
HttpSession session2=request.getSession();
session.setAttribute("mobile", mobile);
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
You can reorder your  medicines, return medicines for free.PharmEasy has served over 50 lakh families for ordering medicines online.It could be the most</p>
					</div>
				</div>
			</div>
			<div class="body">
				<div class="home">
					<div class="featured">
						<img src="images/doctors.jpg" alt="">
						<div>
							<p>Shaji Hospitals is India's leading super speciality
								hospital. Our team of over 5000 doctors give you the best of
								modern healthcare to ensure you stay healthy.</p>
						</div>
					</div>
					<div>
						<div>
							<div>
								<h4>Programs</h4>
								<h3>User Details</h3>

								
								<fieldset>
			
			<table border=1 align="center">
			
         <%
		
			
				query="select id,uname,password,mobile from user where mobile='"+mobile+"'";
				ps1=Connections.con().prepareStatement(query);
				resultSet1=ps1.executeQuery();
			    while(resultSet1.next())
			    {
			    %>
			    <tr><th>User ID</th><td><%=resultSet1.getString(1) %></td></tr>
			     <tr><th>Name</th><td><%=resultSet1.getString(2) %></td></tr>
			      <tr><th>Password</th><td><%=resultSet1.getString(3) %></td></tr>
			       <tr><th>Mobile</th><td><%=resultSet1.getString(4) %></td></tr>
			    
			    <%
			    	
			    }
           
         %>
            
         </table>
         </fieldset>
         <br><br>
          Save your ID and Password<br>
         <a href="index.html">Go to Login</a>
         
       

								<br>
								<br>
								</p>
								
							</div>
							<div>
								<h4>Website</h4>
								<h2>Medicine Search</h2>
								<ul>
									<li>Selection of medicines follows market approval of a pharmaceutical product which defines the availability of a medicine in a country.</li>
								</ul>
								<span><a href="programs.html">Learn more</a></span>
							</div>
						</div>
						<div>
							<h4>Services</h4>
							<a href="services.html"><img src="images/services.jpg" alt=""></a>
							<ul>
								<li><a href="services.html">Online Doctor Consultation</a></li>
								<li><a href="services.html">All Doctor List</a></li>
								<li><a href="services.html">Consult Physicians</a>
								</li>
								<li><a href="services.html">Consult Cardiologists</a></li>
								<li><a href="services.html">Consult Dietitians</a></li>
								<li><a href="services.html">Consult Dermatologists</a></li>
								<li><a href="services.html">Consult Gynaecologists</a>
								</li>
								
								
								<li><a href="services.html">Doctors by city</a></li>
								<li><a href="services.html">Doctors by Specialty</a></li>
								<li><a href="services.html">Consult Paediatricians</a></li>
							</ul>
							<span><a href="programs.html">Learn More</a></span>
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