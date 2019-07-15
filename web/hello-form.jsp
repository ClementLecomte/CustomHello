<%--
  Created by IntelliJ IDEA.
  User: clement
  Date: 13/07/19
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<head>
    <title>Hello Form</title>
</head>
<body>

<div class="container-fluid" style="margin-top: 10vh">
    <div class="row justify-content-center ">
        <div class="col-6 border border-info">
            <form method="post" style="margin-top: 15px"  action="simple-hello">
                <div class="form-group" >
                    <label >Enter your name: </label>
                    <input type="text" name="name" class="form-control"  required>
                </div>
                <div class="form-group">
                    <label >Enter your lastName : </label>
                    <input type="text"  class="form-control" name="lastName" required>
                </div>
                <div class="form-group">
                    <label>When ?</label>
                    <select   name="time" class="custom-select" aria-label="When ?" >
                        <option value="morning">Morning</option>
                        <option value="Afternoon">Afternoon</option>
                        <option value="Evening">Evening</option>
                    </select>
                </div>
                <div class="row justify-content-center" style="margin-bottom: 15px">
                    <button type="submit" class="btn btn-primary" value="submit" >Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>


</body>
</html>
