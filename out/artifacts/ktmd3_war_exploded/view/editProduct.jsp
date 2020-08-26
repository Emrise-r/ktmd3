<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Management Application</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Product Management</h1>
    <h2>
        <a href="main?action=view">List All Product</a>
    </h2>
</div>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Product:
                </h2>
            </caption>
            <c:if test="${product != null}">
                <input type="hidden" name="id" value="<c:out value='${product.id}' />"/>
            </c:if>
            <tr>
                <th>Product Name:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="${product.name}"/>
                </td>
            </tr>
            <tr>
                <th>Product price:</th>
                <td>
                    <input type="text" name="price" size="45"
                           value="${product.price}"/>
                </td>
            </tr>
            <tr>
                <th>Quantity:</th>
                <td>
                    <input type="text" name="quantity" size="15"
                           value="${product.quantity}"/>
                </td>
            </tr>
            <tr>
                <th>Color:</th>
                <td>
                    <input type="text" name="color" size="15"
                           value="<c:out value='${product.getColor()}' />"/>
                </td>
            </tr>
            <tr>
                <th>Category:</th>
                <td>
                    <input type="text" name="category" size="15"
                           value="${product.color}"/>
                </td>
            </tr>
            <tr>
                <th>Description:</th>
                <td>
                    <input type="text" name="description" size="15"
                           value="${product.description}"/>
                </td>
            </tr>
            <tr>
                <th>Category:</th>
                <td>
                    <select name="cid" id="cid">
                        <c:forEach var="category" items="${categoryList}">
                            <option value="${category.cid}"
                                <c:if test="${category.cid == product.cid}"> selected  </c:if>>
                                <c:out value="${category.categoryName}"/>
                            </option>
                        </c:forEach>
                    </select>
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