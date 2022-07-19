<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
		<%
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String phoneNo = request.getParameter("phoneNo");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
		%>
		<h1>Customer delete account</h1>
		<form action="delete" method="post">
	
		Student ID<input type="text" name="id" value="<%=id %>" readonly><br><br>
		Name<input type="text" name="name" value="<%= name%>" readonly><br><br>
		Contact No<input type="text" name="phoneNo" value="<%= phoneNo%>" readonly><br><br>
		Email<input type="text" name="email" value="<%=email %>" readonly><br><br>
		Address<input type="text" name="address" value="<%= address%>" readonly><br><br>
		Username<input type="text" name="username" value="<%=username %>" readonly><br><br>
		
		
		<input type="submit" name="submit" value="delete my account">
	
		</form>


</body>
</html>