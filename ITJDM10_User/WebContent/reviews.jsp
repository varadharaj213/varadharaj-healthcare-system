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
<%@ page import="java.util.List"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.Connections.*"%>
<%
	PreparedStatement ps = null;
	ResultSet resultSet = null;
	Statement st = null;
	PreparedStatement ps1 = null;
	ResultSet resultSet1 = null;
	PreparedStatement ps2 = null;
	ResultSet resultSet2 = null;
	Statement st1 = null;
	String query = null;
%>
<%
	HttpSession session1 = request.getSession(false);
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");

	String drid = request.getParameter("drid");
	String drname = request.getParameter("drname");
	session1.setAttribute("drid", drid);
	session1.setAttribute("drname", drname);
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


				<img src="images/doctors.jpg" alt="">
				<div>
					<p>Shaji Hospitals is India's leading super speciality
						hospital. Our team of over 5000 doctors give you the best of
						modern healthcare to ensure you stay healthy.</p>
				</div>
			</div>

			<div>
				<div>
					<form method="post" action="Reviews" name="myform"
						onsubmit="return msgvalidate()">
						<fieldset>
							<legend>Message </legend>
							<table>

								<tr>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								
								<tr>
									<h3>
										<td>Name</td>
										<td>:</td>
										<td><input type="text" name="uname" 
											id="mailid" required></td>
									</h3>
								</tr>
								<tr>
									<td>Feedback:</td>
									<td>:</td>
									<td><textarea rows="5" cols="20" name="msg">
</textarea>
								<tr>
									<td></td>
									<td><input type="submit" value="POST" /></td>
									<td><input type="reset" value="CANCEL" /></td>
								</tr>

							</table>
							<br> <a href="welcome.jsp">Go to Home page</a>
						</fieldset>
					</form>

					<script type="text/javascript">
						function msgvalidate() {
							var msg = document.myform.msg.value;
							if (msg == null || msg == "") {
								alert("Describe your Feedback.");
								return false;
							}
							return true;
						}
					</script>


					<br> <br>
					<fieldset>
						<legend>Reviews </legend>
						<form
							action="Delete?user_id=<%=id%>&drid=<%=drid%>&drname=<%=drname%>"
							method="post">
							<table border=2 style="width: 100%">
								<tr bgcolor="yellow">
									<td>Name</td>
									<td>Feedback</td>
								

								</tr>
								<%
									query = "select * from reviews";
									ps1 = Connections.con().prepareStatement(query);
									resultSet1 = ps1.executeQuery();
									while (resultSet1.next()) {
								%>
								<tr>
								<tr>
									<td><%=resultSet1.getString(1)%></td>
									<td><%=resultSet1.getString(2)%></td>
								

									<%
										}
									%>
								
							</table>
						</form>
					</fieldset>
					<br> <br> <br> <br>





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
				<a href="http://freewebsitetemplates.com/go/facebook/" id="facebook">facebook</a>
				<a href="http://freewebsitetemplates.com/go/googleplus/"
					id="googleplus">google+</a>
			</div>
		</div>
		<p>&#169; Copyright 2012. All rights reserved</p>
	</div>
	</div>
	</div>
</body>
</html>
