package service;

import java.util.List;

import dao.UserOrder;
import domain.Order;
import domain.UserOrderItem;

public class UserOrderService {
	public List<Order> userFindOrderById(String id) {
		UserOrder uOrder = new UserOrder();
		List<Order> order =uOrder.FindOrderById(id);
		return order;
	}
	
	public UserOrderItem FindOrderItemById(String orderid) {
		UserOrder uOrder = new UserOrder();
		UserOrderItem uitem =uOrder.FindOrderItemById(orderid);
		return uitem;
	}

}
