package userServlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import domain.Order;
import domain.User;
import domain.UserOrderItem;
import service.ProductService;
import service.UserOrderService;

/**
 * user的id查询user的订单
 */
public class UsreOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UsreOrderServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("sUser");
		String id = String.valueOf(user.getId());
		UserOrderService userOrder = new UserOrderService();
		List<Order> uOrders = userOrder.userFindOrderById(id);
		ProductService pService = new ProductService();
		List<String> pname = new ArrayList<String>();
		for(Order order:uOrders) {
			UserOrderItem uItem = userOrder.FindOrderItemById(order.getId());
			String name = pService.findProductNameById(uItem.getProductid());
			pname.add(name);
			System.out.println("Productid:"+uItem.getProductid());
		}
		session.setAttribute("uOrders", uOrders);
		session.setAttribute("pname", pname);
		System.out.println("成功select order by user.id:"+id);
		response.sendRedirect(request.getContextPath()+"/admin/js/userOrder.jsp");
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
