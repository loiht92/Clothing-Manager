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
<div>
    <form method="get">
        <label>
            <select name="status">
                <c:forEach items='${requestScope["clothing"]}' var="clothing">
                    <option name="status">${clothing.getStatus()}</option>
                </c:forEach>
            </select>
        </label>
        <a href="${pageContext.request.contextPath}/clothing?action=findByStatus">Tìm kiếm theo tinh trang hang ban</a>
    </form>
</div>
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

