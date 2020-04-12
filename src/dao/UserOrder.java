package dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import domain.Order;
import domain.UserOrderItem;
import utils.JdbcUtil;

public class UserOrder {

	public List<Order> FindOrderById(String id) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql = "select * from `orders` where `userid`=?";
		List<Order> order = null;
		try {
			order = runner.query(sql, new BeanListHandler<Order>(Order.class), id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(order);
		return order;
	}

	public UserOrderItem FindOrderItemById(String orderid) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql = "select * from `orderitem` where `orderid`=?";
		UserOrderItem uitem = null;
		try {
			uitem = runner.query(sql, new BeanHandler<UserOrderItem>(UserOrderItem.class), orderid);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uitem;
	}

}
