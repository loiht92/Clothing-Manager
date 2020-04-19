<%--
  Created by IntelliJ IDEA.
  User: holoi
  Date: 4/19/20
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title style="text-align: center">clothing Management Application</title>
</head>
<body>

<h1 style="text-align: center">Clothing Management</h1>
<h2>
    <a style="text-align: center" href="category?action=listCategory">List All Users</a>
</h2>

<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Category
                </h2>
            </caption>
            <tr>
                <th>Name:</th>
                <td>
                    <input type="text" name="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Status: </th>
                <td>
                    <input type="text" name="status" size="45"/>
                </td>
            </tr><tr>

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