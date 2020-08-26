<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

</head>
<body>
<h1>
    <a href="main?action=''">ListProduct</a>
</h1>
<h2>
    <a href="main?action=create" style="margin-left: auto; margin-right: auto">Add New Product</a>
</h2>
<div>
    <form action="/main?action=search" method="post">
        <td>
            <input type="text" name="name" size="45"/>
            <input type="submit" value="Search"/>
        </td>

    </form>
</div>

<table id="table" class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">Price</th>
        <th scope="col">Quantity</th>
        <th scope="col">Color</th>
        <th scope="col">Description</th>
        <th scope="col">Category</th>
        <th scope="col">Edit</th>
        <th scope="col">Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items='${listProduct}'>
        <tr>
            <td><c:out value="${product.id}"/></td>
            <td><c:out value="${product.name}"/></td>
            <td><c:out value="${product.price}"/></td>
            <td><c:out value="${product.quantity}"/></td>
            <td><c:out value="${product.color}"/></td>
            <td><c:out value="${product.description}"/></td>
            <td>
                <c:forEach var="category" items="${categoryList}">
                    <c:if test="${category.cid == product.cid}">
                        <c:out value="${category.categoryName}"/>
                    </c:if>
                </c:forEach>
            </td>
            <td><a href="/main?action=edit&id=${product.id}"><input type="submit" value="Edit"/></a></td>
            <td><a href="/main?action=delete&id=${product.id}"><input type="submit" value="Delete"/></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        $('#table').DataTable();
    });
</script>
</body>
</html>
