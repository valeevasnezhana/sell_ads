<!DOCTYPE html>
<html>
<head>
    <title>User</title>
</head>
<body>
<h3>User ${user.name}</h3>
<b>Phone Number: </b> ${user.numberPhone}<br>
<b>Email: </b> ${user.email}<br>
<h4>User products:</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> $${product.price} | <a href="/product/${product.id}">More...</a></p>
    </div>
<#else>
    <h3>No products</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>