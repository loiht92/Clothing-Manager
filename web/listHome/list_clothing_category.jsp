<%--
  Created by IntelliJ IDEA.
  User: holoi
  Date: 4/19/20
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Clothing List</title>
</head>
<body>
<h1>Clothing</h1>
<p>
    <a href="${pageContext.request.contextPath}/clothing?action=listClothing">Clothing-Manager</a>
    <a href="${pageContext.request.contextPath}/category?action=listCategory">Category-Manager</a>
</p>

<form action="${pageContext.request.contextPath}/clothing" method="get">
    <input type="hidden" name="action" value="findByStatus"/>
    <select name="status">
        <c:forEach items='${requestScope["statuses"]}' var="status">
            <option name="status">${status}</option>
        </c:forEach>
    </select>
    <button type="submit">Tìm kiếm theo tinh trang hang ban</button>
</form>

<table border="1">
    <tr>
        <td>Name</td>
        <td>description</td>
        <td>picture</td>
        <td>price</td>
        <td>origin</td>
        <td>category</td>
        <td>status</td>
    </tr>


    <c:forEach items='${requestScope["clothing"]}' var="clothing">
        <tr>
            <td>${clothing.getName()}</td>
            <td>${clothing.getDescription()}</td>
            <td><img src="${clothing.getPicture()}" alt="img" width="40%" height="auto"></td>
            <td>${clothing.getPrice()}</td>
            <td>${clothing.getOrigin()}</td>
            <td>${clothing.getCategory()}</td>
            <td>${clothing.getStatus()}</td>

        </tr>
    </c:forEach>
</table>
</body>
</html>

