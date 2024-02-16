<!DOCTYPE html>
<html>
<head>
    <title>Products</title>
</head>
<body>
<#if user.email??>
    <h1>Hello, ${user.name}! </h1>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Log Out">

    </form>
<#else>
    <h1>Hello, unauthorized Aboba! </h1>
    <a href="/login">Log In</a>
</#if>

<hr>
<h4>Products:</h4>
<form action="/" method="get">
    Search by title: <input type="text" name="title"><br>
    <input type="submit" value="Search">
</form>
<#list products as product>
    <div>
        <p>
            <b>${product.title}</b> Price: $${product.price} | <a href="/product/${product.id}">More...</a>
        </p>
    </div>
<#else>
    No products
</#list>
<hr>
<#if user.email??>
    <h3>Add new Product for sale</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Title: <input type="text" name="title"><br><br>

        Description: <input type="text" name="description"><br><br>
        Price: <input type="number" name="price"><br><br>
        City: <input type="text" name="city"><br><br>

        1st photo: <input type="file" name="file1"><br><br>
        2nd photo: <input type="file" name="file2"><br><br>
        3rd photo: <input type="file" name="file3"><br><br>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add Product">
    </form>
<#else>
    <h4><a href="/login">Log In</a> to add Product</h4>
</#if>

</body>
</html>