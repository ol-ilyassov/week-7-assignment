<!DOCTYPE HTML>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
            crossorigin="anonymous">
    </script>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/left-nav-style.css">
    <link rel="shortcut icon" href="img/shop.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>- MAN'S SHOP -</title>
</head>
<body>
    <input type="checkbox" id="nav-toggle" hidden>
    <nav class="nav">
        <label for="nav-toggle" class="nav-toggle" onclick></label>
        <h2>Menu</h2>
        <ul>
            <li><a href="index.jsp">Home Page</a></li>
            <li><a href="catalog.jsp">Catalog</a></li>
            <%
                if (session.getAttribute("name") == null) {
                    out.print("<li><a href='register.jsp'>Register</a></li>");
                    out.print("<li><a href='login.jsp'>Login</a></li>");
                } else {
                    out.print("<li><a href='basket.jsp'>Basket</a></li>");
                    out.print("<li><a href='account.jsp'>Account</a></li>");
                    out.print("<li><a href='logOut'>Logout</a></li>");
                }
            %>
        </ul>
    </nav>

    <header></header>
    <div class="wrapper">