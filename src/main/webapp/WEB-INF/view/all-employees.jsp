<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All employees</title>
</head>
<body>

    <h2>All employees</h2>
    <br><br>

    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>
        <c:forEach var="emp" items="${allEmps}">

            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empId" value="${emp.id}"/>
            </c:url>
            <tr>
                <th>${emp.name}</th>
                <th>${emp.surname}</th>
                <th>${emp.department}</th>
                <th>${emp.salary}</th>
                <th>
                    <input type="button" value="Update"
                    onclick="window.location.href='${updateButton}'"/>
                    <input type="button" value="Delete"
                    onclick="window.location.href='${deleteButton}'"/>
                </th>
            </tr>
        </c:forEach>
    </table>
<br>
<br>

<input type="button" value="Add"
 onclick="window.location.href='addNewEmployee'">
</body>
</html>
