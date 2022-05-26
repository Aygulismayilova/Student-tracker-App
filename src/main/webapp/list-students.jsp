<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Zamin
  Date: 24/05/2022
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Tracker App</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<div id="wrapper">
    <div id="header">
        <h2>Qafqaz University</h2>
    </div>
</div>

<div id="container">
    <div id="content">

        <!--put new button: Add Student-->
        <input type="button" value="Add Student" onclick="window.location.href='add-student-form.jsp';return false"
               class="add-student-button"/>
        <!--  add a search box -->
        <form action="StudentControllerServlet" method="GET">

            <input type="hidden" name="command" value="SEARCH" />

            Search student: <input type="text" name="theSearchName" />

            <input type="submit" value="Search" class="add-student-button" />

        </form>

        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Action</th>
            </tr>

            <c:forEach var="tempStudent" items="${STUDENT_LIST}">

                <!--set up a link for each student-->
                <c:url var="tempLink" value="StudentControllerServlet">
                    <c:param name="command" value="LOAD"/>4
                    <c:param name="studentId" value="${tempStudent.id}"/>
                </c:url>

                <!--set up a link to delete a student-->
                <c:url var="deleteLink" value="StudentControllerServlet">
                    <c:param name="command" value="DELETE"/>4
                    <c:param name="studentId" value="${tempStudent.id}"/>
                </c:url>


                <tr>
                    <td> ${tempStudent.firstName} </td>
                    <td> ${tempStudent.lastName} </td>
                    <td> ${tempStudent.email} </td>
                    <td><a href="${tempLink}">Update </a>
                        <a href="${deleteLink}"
                           onclick="if(!(confirm('Are you sure you want to delete this student?'))) return false">Delete </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>

</body>
</html>



