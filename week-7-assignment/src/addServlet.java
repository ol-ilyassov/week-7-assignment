import products.Laptops;
import products.Product;
import products.Smartphones;
import products.Tablets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Product> products = new ArrayList<>();
        products.add(new Smartphones(0, "Lenovo A1000", 75000, "Cool Telephone 1", "img/Lenovo-A1000-970.jpg"));
        products.add(new Smartphones(3, "IPhone SE", 170000, "Cool Telephone 2","img/iphone-se-white-select-2020_GEO_EMEA.jpg"));
        products.add(new Smartphones(7, "Samsung S4", 95000, "Cool Telephone 3","img/color1.jpg"));
        products.add(new Tablets(1, "Samsung Galaxy Tab3", 90000, "Not Bad 1","img/41zb1HTZ1jL._AC_SS350_.jpg"));
        products.add(new Tablets(4, "IPad", 140000, "Not Bad 2","img/ipad-mini-select-201911_FMT_WHH.jpg"));
        products.add(new Tablets(5, "Lenovo YOGA", 120000, "Not Bad 3","img/1b39fc1274568da698a22ed6fc90bf1d06a15314_210767_1asd.jpg"));
        products.add(new Laptops(2, "Acer NITRO 5", 345000, "Best Laptop Ever! 1","img/35e3d867-1d63-11ea-a22d-005056b6dbd7.jpeg"));
        products.add(new Laptops(6, "HP Pavilion", 325000, "Best Laptop Ever! 2","img/hp-pavilion-15-cs2042ur-7sf39ea_5d6f43eb119d0.jpg"));
        products.add(new Laptops(8, "Predator Helios", 520000, "Best Laptop Ever! 3","img/img_0_62_1874_0_1.jpg"));

        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();

        ArrayList<Product> basket = (ArrayList<Product>) session.getAttribute("basket");
        basket.add(products.get(id));
        session.setAttribute("basket", basket);
        request.getRequestDispatcher("/catalog.jsp").forward(request, response);
    }
}
