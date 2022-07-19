<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
</head>
<body>

	<h1>Update Student Details</h1>

		<%
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String phoneNo = request.getParameter("phoneNo");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
		%>


	
	<form action="update" method="post">
	
		Student ID<input type="text" name="id" value="<%=id %>" readonly><br><br>
		Name<input type="text" name="name" value="<%= name%>"><br><br>
		Contact No<input type="text" name="phoneNo" value="<%= phoneNo%>"><br><br>
		Email<input type="text" name="email" value="<%=email %>"><br><br>
		Address<input type="text" name="address" value="<%= address%>"><br><br>
		Username<input type="text" name="username" value="<%=username %>"><br><br>
		Password<input type="password" name="password" value="<%=password %>"><br><br>
		
		<input type="submit" name="submit" value="submit">
	
	</form>
	
	
</body>
</html>