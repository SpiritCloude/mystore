package service;

import java.sql.Connection;
import java.sql.SQLException;

import dao.OrderDao;
import dao.OrderItemDao;
import dao.ProductDao;
import dao.ProductDaoimp;
import domain.Order;
import utils.JdbcUtil;

public class OrderService {
	OrderDao orderDao = new OrderDao();
	OrderItemDao itemDao = new OrderItemDao();
	ProductDao productDao = new ProductDaoimp();

	public void addOrder(Order order) {
		// ��������
		Connection con=null;
		try {
			con = JdbcUtil.getDataSource().getConnection();
			if (con != null) {
				con.setAutoCommit(false);
			}
			// 2.1��orders�����������
			orderDao.addProduct(order);
			// 2.2��orderItem�����������
			itemDao.addOrderItem(order.getOrderItems());
			// 2.3�޸���Ʒ��������
			//productDao.changeProductNum(order);
			con.commit();
		} catch (SQLException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO �Զ����ɵ� catch ��
				e1.printStackTrace();
			}
		}catch (Exception e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
			System.out.println("OrderService�쳣");
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
		}
	}
}
