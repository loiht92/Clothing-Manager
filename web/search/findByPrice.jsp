<%--
  Created by IntelliJ IDEA.
  User: holoi
  Date: 4/19/20
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Select User By Price</title>
</head>
<body>
<center>
    <h1>Select User By Price</h1>
    <h2>
        <a href="/clothing">List all clothing</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <div>Enter Price: <input type="text" id="price" name="price" size="30"></div>
        <input type="submit" id="submit" name="submit" value="Search">

        <div align="center">
            <table border="1" cellpadding="5">
                <caption><h4>Select users by price</h4></caption>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Picture</th>
                    <th>Price</th>
                    <th>Origin</th>
                </tr>
                <c:forEach var="clothing" items="${price}">
                    <tr>
                        <td><c:out value="${clothing.id}"/></td>
                        <td><c:out value="${clothing.name}"/></td>
                        <td><c:out value="${clothing.description}"/></td>
                        <td><c:out value="${clothing.picture}"/></td>
                        <td><c:out value="${clothing.price}"/></td>
                        <td><c:out value="${clothing.origin}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </form>
</div>
</body>
</html>

