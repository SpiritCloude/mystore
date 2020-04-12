package userServlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.Product;
import service.ProductService;

public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddCartServlet() {
        super();
    }

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Product p= (Product) session.getAttribute("p");
		if(p==null) {
			String id = request.getParameter("pid");
			ProductService service=new ProductService();
			p=service.findProductById(id);
		}
		System.out.println("cartServlet"+p);
		//3.2从session中获取购物车对象
		Map<Product, Integer> cart = (Map<Product, Integer>)session.getAttribute("cart");
		//3.3如果购物车为null,说明没有商品存储在购物车中，创建出购物车
		if (cart == null) {
			cart = new HashMap<Product, Integer>();
		}
		//3.4向购物车中添加商品
		Integer count = cart.put(p, 1);
		//3.5如果商品数量不为空，则商品数量+1，否则添加新的商品信息
		if (count != null) {
			cart.put(p, count + 1);
		}			
		session.setAttribute("cart", cart);
		response.sendRedirect(request.getContextPath()+"/admin/js/cart.jsp");
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
