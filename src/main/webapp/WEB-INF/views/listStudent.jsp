
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student List</title>
    <%@ include file="header.jsp" %>

</head>
<body>
<div>
<div class="col-md-8">Student List</div>
<div class="col-md-2">
<a href="add_student" class= "btn btn-primary">Add Student</a>
</div>

<c:if test="${!empty students}">
    <div>

    <table class = "table table-striped">
        <thead>
        <tr>

            <th>Id</th>
            <th>Student Name</th>
            <th>Email</th>
            <th>Gender</th>
            <th>DOB</th>
            <th>Mobile No</th>
            <th>Subjects</th>
            <th>Departments</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${students}" var="s">
            <tr>
                <td>${s.id}</td>
                 <td>${s.studentName}</td>
                <td>${s.email}</td>
                <td>${s.gender}</td>
                <td>${s.dob}</td>
                <td>${s.mobileNo}</td>
                <td>${s.subjects}</td>
                <td>${s.departments}</td>
                <sec:authorize access="hasRole('ROLE_ADMIN') and isAuthenticated()">
                    <td>
                        <a href="edit_student?id=${s.id}">Edit</a>| <a href="delete_student?id=${s.id}">Delete</a>
                    </td>
                </sec:authorize>
            </tr>

        </c:forEach>



        </tbody>


    </table>

</c:if>

</body>
</html>