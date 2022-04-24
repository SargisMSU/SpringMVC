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
        </tr>
        <c:forEach var="emp" items="${allEmps}">
            <tr>
                <th>${emp.name}</th>
                <th>${emp.surname}</th>
                <th>${emp.department}</th>
                <th>${emp.salary}</th>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
