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
		//3.2��session�л�ȡ���ﳵ����
		Map<Product, Integer> cart = (Map<Product, Integer>)session.getAttribute("cart");
		//3.3������ﳵΪnull,˵��û����Ʒ�洢�ڹ��ﳵ�У����������ﳵ
		if (cart == null) {
			cart = new HashMap<Product, Integer>();
		}
		//3.4���ﳵ�������Ʒ
		Integer count = cart.put(p, 1);
		//3.5�����Ʒ������Ϊ�գ�����Ʒ����+1����������µ���Ʒ��Ϣ
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
