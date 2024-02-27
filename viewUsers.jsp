<%@ page contentType="text/html;"%>
<%@page import="com.praveen.entity.User"%>
<%@ page import="java.util.List" %>
<h1>View All Users Table</h1><p></p>
<a href="/">home</a>
<table border="5">
    <tr>
        <th>USERID</th>
        <th>USERNAME</th>
        <th>EMAIL</th>
        <th>USERINFOID</th>
        <th>MOBILE</th>
        <th>GENDER</th>
        <th>NATIONALITY</th>
        <th>EDIT</th>
        <th>DELETE</th>
    </tr>
    <%
        List<User> userList = (List<User>) request.getAttribute("users");
        for (User user : userList) {
    %>


    <tr>
        <td><%=user.getUserId()%></td>
        <td><%=user.getUserName()%></td>
        <td><%=user.getEmail()%></td>
        <td><%=user.getUserInfo().getUserInfoId()%></td>
        <td><%=user.getUserInfo().getMobile()%></td>
        <td><%=user.getUserInfo().getGender()%></td>
        <td><%=user.getUserInfo().getNationality()%></td>
        <td>
            <a href="/edit/<%=user.getUserId()%>">Edit</a>
        </td>
        <td>
            <a href="/delete/<%=user.getUserId()%>">Delete</a>
        </td>
    </tr>
    <% } %>
</table>
