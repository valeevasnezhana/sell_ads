<!DOCTYPE html>
<html>
<head>
    <title>Product</title>
</head>
<body>
<h4>Product details:</h4>
<hr>
<#list images as image>
    <img src="/images/${image.id}" height="60px"/><br><br>
</#list>
<b>Title:</b>${product.title}<br>
<b>Description:</b>${product.description}<br>
<b>Price:</b>${product.price}<br>
<b>City:</b>${product.city}<br>
<b>Seller: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>

<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Delete Product">
</form>
</body>
</html>