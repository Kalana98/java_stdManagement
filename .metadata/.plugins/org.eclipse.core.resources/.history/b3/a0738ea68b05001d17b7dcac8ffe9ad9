<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>
</head>
<body>
	
		<h1>Student Profile</h1>
		
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
			
	
			
			
			
</body>
</html>