<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Inventory Management</title>
</head>
<body>

<h1>Product Inventory Management</h1>

<form action="${pageContext.request.contextPath}/server.jsp" method="post">

    <label>Product Name:</label>
    <input type="text" name="productName" required>
    <br><br>

    <label>Product Price:</label>
    <input type="number" name="productPrice" step="0.01" required>
    <br><br>

    <label>Quantity:</label>
    <input type="number" name="quantity" required>
    <br><br>

    <label>Reorder Level:</label>
    <input type="number" name="reorderLevel" required>
    <br><br>

    <input type="submit" value="SUBMIT">

</form>

</body>
</html>