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
		// 开启事务
		Connection con=null;
		try {
			con = JdbcUtil.getDataSource().getConnection();
			if (con != null) {
				con.setAutoCommit(false);
			}
			// 2.1向orders表中添加数据
			orderDao.addProduct(order);
			// 2.2向orderItem表中添加数据
			itemDao.addOrderItem(order.getOrderItems());
			// 2.3修改商品表中数据
			//productDao.changeProductNum(order);
			con.commit();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO 自动生成的 catch 块
				e1.printStackTrace();
			}
		}catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			System.out.println("OrderService异常");
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
	}
}
