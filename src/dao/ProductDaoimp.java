package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import domain.Product;
import utils.JdbcUtil;

public class ProductDaoimp implements ProductDao {

	@Override
	public Product findProductById(String id) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql = "SELECT * FROM shopping.products where id=?";
		Product p = null;
		try {
			p = runner.query(sql, new BeanHandler<Product>(Product.class), id);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		System.out.println(p);
		return p;
	}
	@Override
	public String findProductNameById(String id) {
		String sql = "SELECT `name` FROM shopping.products where id=?";
		ResultSet rSet=null;
		String name = null;
		try {
			Connection conn = JdbcUtil.getDataSource().getConnection();
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, id);
			rSet = pst.executeQuery();
			while (rSet.next()) {
				name = rSet.getString("name");
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		System.out.println("订单产品名"+id+name);
		return name;
	}
	
}
