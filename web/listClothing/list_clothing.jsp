<%--
  Created by IntelliJ IDEA.
  User: holoi
  Date: 4/19/20
  Time: 15:40
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
    <a href="${pageContext.request.contextPath}/clothing?action=createClothing">Create new clothing</a>



</p>
<div>
    <form method="get" action="${pageContext.request.contextPath}/clothing?action=listClothing">
        <select name="price">
            <c:forEach items='${requestScope["clothing"]}' var="clothing">
                <option value="${clothing.getId()}">${clothing.getPrice()}</option>
            </c:forEach>
        </select>
        <button type="submit" value="FindByPrice">Tìm kiếm theo gia</button>

    </form>
</div>
<table border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>description</td>
        <td>picture</td>
        <td>price</td>
        <td>origin</td>

        <td>action</td>
    </tr>


    <c:forEach items='${requestScope["clothing"]}' var="clothing">
        <tr>
            <td>${clothing.getId()}</td>
            <td>${clothing.getName()}</td>
            <td>${clothing.getDescription()}</td>
            <td><img src="${clothing.getPicture()}" alt="img" width="40%" height="auto"></td>
            <td>${clothing.getPrice()}</td>
            <td>${clothing.getOrigin()}</td>
            <td><a href="/clothing?action=editClothing&id=${clothing.getId()}">edit</a></td>
            <td><a href="/clothing?action=deleteClothing&id=${clothing.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

