





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>profile</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="CSS/useraccount.css" rel="stylesheet" type="text/css"/>

<style>

body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #222;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
</head>
<body class="w3-black">

<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">

  <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-black">
    <i class="fa fa-home w3-xxlarge"></i>
    <p>HOME</p>
  </a>
  <a href="insertStd.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-user w3-xxlarge"></i>
    <p>Registraion</p>
  </a>
  <a href="useraccount.jsp" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-eye w3-xxlarge"></i>
    <p>PHOTOS</p>
  </a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-envelope w3-xxlarge"></i>
    <p>CONTACT</p>
  </a>
</nav>

<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
  <div class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
    <a href="#" class="w3-bar-item w3-button" style="width:25% !important">HOME</a>
    <a href="#about" class="w3-bar-item w3-button" style="width:25% !important">ABOUT</a>
    <a href="#photos" class="w3-bar-item w3-button" style="width:25% !important">PHOTOS</a>
    <a href="#contact" class="w3-bar-item w3-button" style="width:25% !important">CONTACT</a>
  </div>
</div>

<!-- Page Content -->
	<center> 
    	<h1>Student Profile</h1><br>
		
		<table>

			<c:forEach var="std" items="${stdDetails}">
			
			<c:set var="id" value="${std.id}"/>
			<c:set var="name" value="${std.name }"/>
			<c:set var="phoneNo" value="${std.phoneNo }"/>
			<c:set var="email" value="${std.email }"/>
			<c:set var="address" value="${std.address }"/>
			<c:set var="username" value="${std.username }"/>
			<c:set var="password" value="${std.password }"/>
		
				<tr>
					<td>Student ID </td>
					<td>${std.id}</td>
				</tr>
				
				<tr>
					<td>Name </td>
					<td>${std.name }</td>
				</tr>
				
				<tr>
					<td>Contact No</td>
					<td>${std.phoneNo }</td>
				</tr>
				
				<tr>
					<td>Email</td>
					<td>${std.email }</td>
				</tr>
				
				<tr>
					<td>Address</td>
					<td>${std.address}</td>
				</tr>
				
				<tr>
					<td>Username</td>
					<td>${std.username}</td>
				</tr>
				
				<tr>
					<td>Password</td>
					<td>${std.password}</td>
				</tr>
			
			
			</c:forEach>
			
		  </table>
		
			<c:url value="updateStudent.jsp" var="stdUpdate">
				<c:param name="id" value="${id }"/>
				<c:param name="name" value="${name }"/>
				<c:param name="phoneNo" value="${phoneNo }"/>
				<c:param name="email" value="${email }"/>
				<c:param name="address" value="${address }"/>
				<c:param name="username" value="${username }"/>
				<c:param name="password" value="${password }"/>
				
			</c:url>
		
			<br>
		
			<a href="${stdUpdate }">
				<input type="button" name="update" value="update my data"/>
			</a>
			<br>
			
                                            			
			<c:url value="deleteStudent.jsp" var="stdDelete">
				<c:param name="id" value="${id}"/>
				<c:param name="name" value="${name}"/>
				<c:param name="email" value="${email}"/>
				<c:param name="phoneNo" value="${phoneNo}"/>
				<c:param name="address" value="${address}"/>
				<c:param name="username" value="${username}"/>
				<c:param name="password" value="${password}"/>
			</c:url> 
			<a href="${stdDelete }">
			<input type="button" name="delete" value="delete">
			</a>
			
	
	</center>		
   

  <!-- Contact Section -->
  <div class="w3-padding-64 w3-content w3-text-grey" id="contact">
    <h2 class="w3-text-light-grey">Contact Me</h2>
    <hr style="width:200px" class="w3-opacity">

    <div class="w3-section">
      <p><i class="fa fa-map-marker fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Chicago, US</p>
      <p><i class="fa fa-phone fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Phone: +00 151515</p>
      <p><i class="fa fa-envelope fa-fw w3-text-white w3-xxlarge w3-margin-right"> </i> Email: mail@mail.com</p>
    </div><br>
     <!-- End Contact Section -->
  </div>
  
    <!-- Footer -->
  <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
    <p class="w3-medium">Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-text-green">w3.css</a></p>
  <!-- End footer -->
  </footer>

<!-- END PAGE CONTENT -->
</div>

</body>
</html>
