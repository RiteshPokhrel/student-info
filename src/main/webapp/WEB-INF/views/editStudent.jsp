<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Edit Form</title>

    <%@ include file="header.jsp" %>

</head>
<body>
<div class="container">
    <div class="panel">
        <div class="panel panel-default">
            <div class="rows">
                <div class="col-md-2"></div>
                <div class="col-md-8 jumbotron">



                    <form action="update_student" method="post"
                          class="form-horizontal">
                        <fieldset>

                            <legend>Student Edit Form</legend>


                            <div class="form-group">

                                <label>Id</label> <input type="text" name="id"
                                                         readonly="readonly" value="${student.id}" class="form-control" class="bold_text" >

                            </div>


                            <div class="form-group">
                                <label>Password</label> <input type="text"
                                                                   name="password" value="${student.password}"
                                                                   class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Student Name</label> <input type="text"
                                                                   name="studentName" value="${student.studentName}"
                                                                   class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Email</label> <input type="email" name="email"
                                                            value="${student.email}" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>DOB</label> <input type="date" name="dob"
                                                          value="${student.dob}" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Mobile No</label> <input type="number" name="mobileNo"
                                                                value="${student.mobileNo}" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Gender</label> <input type="radio" name="gender"
                                                             value="Male" ${student.gender=='Male'?'checked' :' ' }>Male
                                <input type="radio" name="gender" value="Female"
                                ${student.gender=='Female'?'checked' :' ' }>Female
                            </div>

                            <div class="form-group">
                                <label>Subjects</label> <input type="checkbox" name="subjects"
                                                               value="Math"
                            <c:if test ="${fn:contains(student.subjects,'Math')}"> checked </c:if>>Math

                                <input type="checkbox" name="subjects" value="Science"
                                <c:if test ="${fn:contains(student.subjects,'Science')}"> checked </c:if>>Science
                            </div>

                            <div class="form-group">
                                <label>Departments</label> <select name="departments"
                                                                   class="form-control">
                                <option value="Science"
                                ${student.departments=='Science'?'selected': ''}>Science</option>
                                <option value="Management"
                                ${student.departments=='Management'?'selected': ''}>Management</option>
                                <option value="Humanities"
                                ${student.departments=='Humanities'?'selected': ''}>Humanities</option>
                            </select>
                            </div>

                            <div class="form-group">

                                <input type="submit" value="Submit" class="btn btn-success">
                            </div>

                        </fieldset>

                    </form>

                </div>
                <div class="col-md-2"></div>

            </div>
        </div>
    </div>
</div>

</body>
</html>