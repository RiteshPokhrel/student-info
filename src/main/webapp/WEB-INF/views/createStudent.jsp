<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Registration Form</title>
    <%@ include file="header.jsp" %>

</head>
<body>

<div class="container">
    <div class="panel">
        <div class="panel panel-default">
            <div class="rows">
                <div class="col-md-2"></div>
                <div class="col-md-8 jumbotron">

                    <form action="save_student" method="post" class="form-horizontal">
                        <fieldset>
                            <legend>Student Form Registration</legend>

                            <div class="form-group">
                                <label>Student Name</label> <input type="text"
                                                                   name="studentName" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Password</label> <input type="text"
                                                                   name="password" class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Email</label> <input type="email" name="email"
                                                            class="form-control">
                            </div>

                            <div class="form-group">
                                <label>DOB</label> <input type="date" name="dob"
                                                          class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Mobile No</label> <input type="number" name="mobileNo"
                                                                class="form-control">
                            </div>

                            <div class="form-group">
                                <label>Gender</label> <input type="radio" name="gender"
                                                             value="Male">Male <input type="radio" name="gender"
                                                                                      value="Female">Female
                            </div>

                            <div class="form-group">
                                <label>Subjects</label> <input type="checkbox" name="subjects"
                                                               value="Math" class="form-check">Math <input
                                    type="checkbox" name="subjects" value="Science"
                                    class="form-check">Science
                            </div>

                            <div class="form-group">
                                <label>Departments</label> <select name="departments"
                                                                   class="form-control">
                                <option value="Science">Science</option>
                                <option value="Management">Management</option>
                                <option value="Humanities">Humanities</option>
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