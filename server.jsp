<html>
<body>

<h1>Product Inventory Report</h1>

<%
    String productName = request.getParameter("productName");

    double productPrice =
        Double.parseDouble(request.getParameter("productPrice"));

    int quantity =
        Integer.parseInt(request.getParameter("quantity"));

    int reorderLevel =
        Integer.parseInt(request.getParameter("reorderLevel"));

    // Calculate total inventory value
    double totalInventoryValue =
        productPrice * quantity;

    // Determine stock status
    String stockStatus;

    if (quantity == 0) {
        stockStatus = "Out of Stock";
    }
    else if (quantity <= reorderLevel) {
        stockStatus = "Low Stock";
    }
    else {
        stockStatus = "In Stock";
    }
%>

<table border="1" cellpadding="10">

    <tr>
        <th>Product Name</th>
        <td><%= productName %></td>
    </tr>

    <tr>
        <th>Product Price</th>
        <td><%= productPrice %></td>
    </tr>

    <tr>
        <th>Quantity</th>
        <td><%= quantity %></td>
    </tr>

    <tr>
        <th>Reorder Level</th>
        <td><%= reorderLevel %></td>
    </tr>

    <tr>
        <th>Total Inventory Value</th>
        <td><%= totalInventoryValue %></td>
    </tr>

    <tr>
        <th>Stock Status</th>
        <td><%= stockStatus %></td>
    </tr>

</table>

</body>
</html>