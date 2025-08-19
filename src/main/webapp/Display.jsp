<%@page import="dto.person"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <% List<person> list= (List<person>)request.getAttribute("r");%> --%>
<% person i=(person)request.getAttribute("r");%>

<table border="2px solid" rules="all">


<tr>
<th>Userid</th>
<th>Name</th>
<th>Age</th>
<th>Gender</th>
<th>Phone</th>
<th>Mail</th>
<th>Delete data</th>
<th>Update data</th>
</tr>

<%-- <%for(person i:list) {%> --%>
<tr>
<td><%=i.getPersonId() %></td>
<td><%=i.getName() %></td>
<td><%=i.getAge()%></td>
<td><%=i.getGender() %></td>
<td><%=i.getPhone()%></td>
<td><%=i.getEmail() %></td>

<td><a href="delete?id=<%=i.getPersonId()%>" ><button>Delete</button></a></td>

<%--- 
   <form action="delete">
<td><button value="<%= i.getPersonId() %>" name="d">Delete</button></td>
</form>
--%>
<td><a href="update?id=<%=i.getPersonId()%>"><button>update</button></a></td>
</tr>
<%-- <%} %> --%>
</table>

</body>
</html>