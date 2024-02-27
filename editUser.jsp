<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body bgcolor="pink">
<h1>Edit Student Details Here</h1>
<form:form method="GET" action="/editandsave">
    <table>
        <tr>
            <td>USER ID:</td>
            <td><form:input path="userId" type="number" required="true"/></td>
        </tr>
        <tr>
            <td>USER NAME:</td>
            <td><form:input path="userName" required="true"/></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><form:input path="email" required="true"/></td>
        </tr>
        <tr>
            <td>UserInfoId:</td>
            <td><form:input path="userInfo.userInfoId" type="number" required="true"/></td>
        </tr>
        <tr>
            <td>Mobile:</td>
            <td><form:input path="userInfo.mobile" type="number" required="true"/></td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td><form:input path="userInfo.gender"  required="true"/></td>
        </tr>
        <tr>
            <td>Nationality:</td>
            <td><form:input path="userInfo.nationality"  required="true"/></td>
        </tr>

        <tr>
            <td></td>
            <td><input type="submit" value="editandsave"/></td>
        </tr>
    </table>
</form:form>
</body>
