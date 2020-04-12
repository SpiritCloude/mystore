package dao;

import java.sql.SQLException;
import org.apache.commons.dbutils.QueryRunner;
import domain.Order;
import utils.JdbcUtil;

public class OrderDao {
	public void addProduct(Order o) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql="insert into `orders` (`id`,`userid`,`money`,`receiveraddress`,`receivername`,`receiverphone`) values(?,?,?,?,?,?)";
		Object [] params= {o.getId(),o.getUser().getId(),o.getMoney(),o.getReceiverAddress(),o.getReceiverName(),o.getReceiverPhone()};
		int rows = 0;
		try {
			rows = runner.update(sql, params);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		System.out.println("addProduct"+rows);
	}

}
