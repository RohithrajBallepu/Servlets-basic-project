<%@page import="dto.person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%person dbperson=(person)request.getAttribute("existingp");%>
<form action="edit" method="post" >
	
  			Id:<input type="hidden" name="id" value="<%=dbperson.getPersonId()%>">
        <label for="n">Name:</label>
        <input type="text" id="n" placeholder="update name" name="n" value="<%=dbperson.getName() %>" >
    <br>
    <br>

   
        <label for="a">Age:</label>
        <input type="number" id="a" placeholder="update age" name="a" value="<%=dbperson.getAge()%>">
        <br><br>
    
        <label for="g">Gender:</label>
        <select id="g" name="g" required value="<%=dbperson.getGender()%>">
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>
    <br><br>

   
        <label for="p">Phone:</label>
        <input type="tel" id="p" placeholder="update number" name="p" pattern="[0-9]{10}" value="<%=dbperson.getPhone()%>">
        <br><br>
    
        <label for="m">Email:</label>
        <input type="email" id="m" placeholder="update email" name="m" value="<%=dbperson.getEmail()%>">
        <br><br>
   
        <label for="m">Password :</label>
        <input type="password" id="m" placeholder="update password" name="pa" value="<%=dbperson.getPassword()%>" >
        <br><br>
    

    <button type="submit">Enter</button>
</form>
</body>
</html>