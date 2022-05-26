<%--
  Created by IntelliJ IDEA.
  User: Zamin
  Date: 25/05/2022
  Time: 12:57
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Add student</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/add-student-style.css">
    <script type="text/javascript" src="js/student-validation.js"></script>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Qafqaz University</h2>
    </div>
</div>
<div id="container">
    <h3>Add Student</h3>
    <form action="StudentControllerServlet" method="POST" name="studentForm" onSubmit="return validateForm()">
        <input type="hidden" name="command" value="ADD">
        <table>
            <tbody>
            <tr>
                <td><label>First name: </label></td>
                <td><input type="text" name="firstName"/></td>
            </tr>
            <tr>
                <td><label>Last name: </label></td>
                <td><input type="text" name="lastName"/></td>
            </tr>
            <tr>
                <td><label>Email: </label></td>
                <td><input type="text" name="email"/></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="save"/></td>
            </tr>
            </tbody>
        </table>
    </form>
    <div style="clear: both;"></div>
    <p>
        <a href="StudentControllerServlet">Back to list</a>
    </p>
</div>
</body>
</html>
