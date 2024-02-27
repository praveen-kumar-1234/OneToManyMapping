<body>
<h1 style="color:green">New Student Marks Register here</h1>
<table>
    <form action="/save" method="post">
        <tr>
            <td>User Name:</td>
            <td><input type="text" name="userName" required/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><input type="text" name="email" required/></td>
        </tr>
<%--        <tr>--%>
<%--            <td>UserInfoId:</td>--%>
<%--            <td><input type="number" name="userInfoId" required/></td>--%>
<%--        </tr>--%>
        <tr>
            <td>Mobile:</td>
            <td><input type="number" name="userInfo.mobile" required/></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td><input type="text" name="userInfo.gender" required/></td>
        </tr>
        <tr>
            <td>Nationality:</td>
            <td><input type="text" name="userInfo.nationality" required/></td>
        </tr>
        <tr>
            <td><input type="submit" value="saveUser"/></td>
        </tr>
    </form>
</table>
</body>