<%--
  Created by IntelliJ IDEA.
  User: holoi
  Date: 4/19/20
  Time: 15:43
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
    <%--    //<a href="${pageContext.request.contextPath}/clothing?action=createClothing">Create new clothing</a>--%>
    <a href="${pageContext.request.contextPath}/category?action=createCategory">Create new category</a>

</p>
<div>
    <form method="get" action="${pageContext.request.contextPath}/category?action=listCategory">
        <select name="name">
            <c:forEach items='${requestScope["clothing"]}' var="clothing">
                <option value="${clothing.getId()}">${clothing.getName()}</option>
            </c:forEach>
        </select>
        <button type="submit" value="FindByCategoryName">Tìm kiếm theo ten the loai</button>

    </form>
</div>
<table border="1">
    <tr>

        <td>Id</td>
        <td>category</td>
        <td>status</td>
        <td>action</td>
    </tr>


    <c:forEach items='${requestScope["categories"]}' var="categories">
        <tr>
            <td>${categories.getId()}</td>
            <td>${categories.getName()}</td>
            <td>${categories.getStatus()}</td>
            <td><a href="/category?action=editCategory&id=${categories.getId()}">edit</a></td>
            <td><a href="/category?action=deleteCategory&id=${categories.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>