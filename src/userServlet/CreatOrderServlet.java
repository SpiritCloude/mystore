package userServlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import domain.Order;
import domain.OrderItem;
import domain.Product;
import domain.User;
import service.OrderService;
import utils.IdUtils;

public class CreatOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CreatOrderServlet() {
        super();
    }

	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("sUser");
		System.out.println("CreatOrderServlet"+user);
		// 2.从购物车中获取商品信息
		Map<Product, Integer> cart = (Map<Product, Integer>)session.getAttribute("cart");
		// 3.将数据封装到订单对象中
		Order order = new Order();
		Map<String , String[]> map = request.getParameterMap();
		try {
			BeanUtils.populate(order,map);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		order.setId(IdUtils.creatId());// 封装订单id
		order.setUser(user);// 封装用户信息到订单.
		System.out.println("CreatOrderServlet"+order);
		for (Product p : cart.keySet()) {
			OrderItem item = new OrderItem();
			item.setOrderid(order);
			item.setBuynum(cart.get(p));
			item.setP(p);
			order.getOrderItems().add(item);
		}
		// 4.调用service中添加订单操作.
		OrderService service = new OrderService();
		service.addOrder(order);
		System.out.println("service.addOrders数据库成功");
//				request.getRequestDispatcher("/client/orderlist.jsp").forward(request, response);
		response.sendRedirect(request.getContextPath() + "/admin/js/createOrderSuccess.jsp");
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
