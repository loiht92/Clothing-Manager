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
    <title>Create new clothing</title>
</head>
<body>

<h1 style="text-align: center">Clothing Management</h1>
<h2>
    <a href="${pageContext.request.contextPath}/clothing?action=listClothing">List All clothing</a>
</h2>

<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2 style="text-align: center">Add New clothing</h2>
            </caption>
            <tr>
                <th>Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Description:</th>
                <td>
                    <input type="text" name="description" id="des" size="45"/>
                </td>
            </tr>
            <tr>
                <th>picture:</th>
                <td>
                    <input type="text" name="picture" id="picture" size="15"/>
                </td>
            </tr>
            <tr>
                <th>price:</th>
                <td>
                    <input type="text" name="price" id="price" size="15"/>
                </td>
            </tr>
            <tr>
                <th>origin:</th>
                <td>
                    <input type="text" name="origin" size="15"/>
                </td>
            </tr>
            <tr>
                <th>category id:</th>
                <td>
                    <input type="text" name="category_id" size="15"/>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

