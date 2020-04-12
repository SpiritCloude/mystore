package userServlet;

import java.io.IOException;
import java.util.Map;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import domain.Product;

/**
 * Servlet implementation class ChangeCartServlet
 */
public class ChangeCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Integer ncount = Integer.parseInt(request.getParameter("count"));
		Integer nstatus = Integer.parseInt(request.getParameter("status"));
		HttpSession session = request.getSession();
		Map<Product, Integer> cart = (Map<Product, Integer>) session.getAttribute("cart");
		Set<Product> s=cart.keySet();
		Product p=null;
		for (int i = 0; i < nstatus; i++) {
			p=s.iterator().next();
		}
		System.out.println(cart.containsKey(p));
		//System.out.println(cart.get(p).intValue());
		if (ncount != 0) {
			cart.put(p, ncount);
			System.out.println("ChangeCartServletÌí¼Ó"+ncount);
		} else {
			cart.remove(p);
			System.out.println("ChangeCartServletÒÆ³ý"+ncount);
		}
		response.sendRedirect(request.getContextPath() + "/admin/js/cart.jsp");
		return;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
