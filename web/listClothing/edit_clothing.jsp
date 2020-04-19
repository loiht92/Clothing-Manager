<%--
  Created by IntelliJ IDEA.
  User: holoi
  Date: 4/19/20
  Time: 15:41
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
    <a style="text-align: center" href="clothing?action=listClothing">List All Users</a>
</h2>

<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Clothing
                </h2>
            </caption>
            <tr>
                <th>Name:</th>
                <td>
                    <input type="text" name="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Description:</th>
                <td>
                    <input type="text" name="description" size="45"/>
                </td>
            </tr><tr>
            <th>Picture:</th>
            <td>
                <input type="text" name="picture" size="45"/>
            </td>
        </tr><tr>
            <th>Price:</th>
            <td>
                <input type="text" name="price" size="45"/>
            </td>
        </tr>
            <tr>
            <th>Origin:</th>
            <td>
                <input type="text" name="origin" size="45"/>
            </td>
        </tr>
            <tr>
                <th>Category_id:</th>
                <td>
                    <input type="text" name="category_id" size="45"/>
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
