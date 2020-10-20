<%@ page import="products.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="products.Smartphones" %>
<%@ page import="products.Tablets" %>
<%@ page import="products.Laptops" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- Header --%>
<jsp:include page="header.jsp"/>

<%-- Content --%>
<%
    ArrayList<Product> products = new ArrayList<>();
    products.add(new Smartphones(0, "Lenovo A1000", 75000, "Cool Telephone 1", "img/Lenovo-A1000-970.jpg"));
    products.add(new Tablets(1, "Samsung Galaxy Tab3", 90000, "Not Bad 1","img/41zb1HTZ1jL._AC_SS350_.jpg"));
    products.add(new Laptops(2, "Acer NITRO 5", 345000, "Best Laptop Ever! 1","img/35e3d867-1d63-11ea-a22d-005056b6dbd7.jpeg"));
    products.add(new Smartphones(3, "IPhone SE", 170000, "Cool Telephone 2","img/iphone-se-white-select-2020_GEO_EMEA.jpg"));
    products.add(new Tablets(4, "IPad", 140000, "Not Bad 2","img/ipad-mini-select-201911_FMT_WHH.jpg"));
    products.add(new Tablets(5, "Lenovo YOGA", 120000, "Not Bad 3","img/1b39fc1274568da698a22ed6fc90bf1d06a15314_210767_1asd.jpg"));
    products.add(new Laptops(6, "HP Pavilion", 325000, "Best Laptop Ever! 2","img/hp-pavilion-15-cs2042ur-7sf39ea_5d6f43eb119d0.jpg"));
    products.add(new Smartphones(7, "Samsung S4", 95000, "Cool Telephone 3","img/color1.jpg"));
    products.add(new Laptops(8, "Predator Helios", 520000, "Best Laptop Ever! 3","img/img_0_62_1874_0_1.jpg"));
%>

<div class="block1" style="background-color: #D7133A">
    <h1>- Catalog -</h1><br>
    <div id="catalog">
        <div><img id="all" src="img/all.png" onclick="myFunction1()"></div>
        <div id="allshow" class="blox" style="display: none">
            <%
                for (Product product: products) {
                    out.println("<figure>");
                    out.println("<img src='" + product.getImage() + "' height='150px' width='150px'>" + "</p><br>");
                    out.println("<p>Title: " + product.getTitle() + "</p><br>");
                    out.println("<p>Price: " + product.getPrice() + " TNG</p><br>");
                    out.println("<p>Description: " + product.getDescription() + "</p>");
                    if (session.getAttribute("name") == null) {
                        out.println("<a style=\"text-decoration:none;\" href='#'><div class=\"btnLink\">[CAN'T BUY]</div></a>");
                    } else {
                        out.println("<a style=\"text-decoration:none;\" href=" + "addServlet?id=" + product.getId() + "><div class=\"btnLink\">[BUY]</div></a>");
                    }
                    out.println("</figure>");
                }
            %>
        </div>
        <div><img id="phones" src="img/phones.png" onclick="myFunction2()"></div>
        <div id="phonesshow" class="blox" style="display: none">
            <%
                for (Product product: products) {
                    if (product instanceof Smartphones) {
                        out.println("<figure>");
                        out.println("<img src='" + product.getImage() + "' height='150px' width='150px'>" + "<br>");
                        out.println("<p>Title: " + product.getTitle() + "</p><br>");
                        out.println("<p>Price: " + product.getPrice() + " TNG</p><br>");
                        out.println("<p>Description: " + product.getDescription() + "</p>");
                        if (session.getAttribute("name") == null) {
                            out.println("<a style=\"text-decoration:none;\" href='#'><div class=\"btnLink\">[CAN'T BUY]</div></a>");
                        } else {
                            out.println("<a style=\"text-decoration:none;\" href=" + "addServlet?id=" + product.getId() + "><div class=\"btnLink\">[BUY]</div></a>");
                        }
                        out.println("</figure>");
                    }
                }
            %>
        </div>

        <div><img id="tablets" src="img/tablets.png" onclick="myFunction3()"></div>
        <div id="tabletsshow" class="blox" style="display: none">
            <%
                for (Product product: products) {
                    if (product instanceof Tablets) {
                        out.println("<figure>");
                        out.println("<img src='" + product.getImage() + "' height='150px' width='150px'>" + "<br>");
                        out.println("<p>Title: " + product.getTitle() + "</p><br>");
                        out.println("<p>Price: " + product.getPrice() + " TNG</p><br>");
                        out.println("<p>Description: " + product.getDescription() + "</p>");
                        if (session.getAttribute("name") == null) {
                            out.println("<a style=\"text-decoration:none;\" href='#'><div class=\"btnLink\">[CAN'T BUY]</div></a>");
                        } else {
                            out.println("<a style=\"text-decoration:none;\" href=" + "addServlet?id=" + product.getId() + "><div class=\"btnLink\">[BUY]</div></a>");
                        }
                        out.println("</figure>");
                    }
                }
            %>
        </div>

        <div><img id="laptops" src="img/laptops.png" onclick="myFunction4()"></div>
        <div id="laptopsshow" class="blox" style="display: none">
            <%
                for (Product product: products) {
                    if (product instanceof Laptops) {
                        out.println("<figure>");
                        out.println("<img src='" + product.getImage() + "' height='150px' width='150px'>" + "<br>");
                        out.println("<p>Title: " + product.getTitle() + "</p><br>");
                        out.println("<p>Price: " + product.getPrice() + " TNG</p><br>");
                        out.println("<p>Description: " + product.getDescription() + "</p>");
                        if (session.getAttribute("name") == null) {
                            out.println("<a style=\"text-decoration:none;\" href='#'><div class=\"btnLink\">[CAN'T BUY]</div></a>");
                        } else {
                            out.println("<a style=\"text-decoration:none;\" href=" + "addServlet?id=" + product.getId() + "><div class=\"btnLink\">[BUY]</div></a>");
                        }
                        out.println("</figure>");
                    }
                }
            %>
        </div>
    </div>
</div>

<%-- Footer --%>
<jsp:include page="footer.jsp"/>

<%-- Additional Java Scripts --%>
<script>
    function myFunction1() {
        var x = document.getElementById("allshow");
        if (x.style.display === "none") {
            x.style.display = "grid";
        } else {
            x.style.display = "none";
        }
    }
    function myFunction2() {
        var x = document.getElementById("phonesshow");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
    function myFunction3() {
        var x = document.getElementById("tabletsshow");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
    function myFunction4() {
        var x = document.getElementById("laptopsshow");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
</script>
