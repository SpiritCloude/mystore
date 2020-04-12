package dao;

import java.sql.SQLException;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import domain.OrderItem;
import utils.JdbcUtil;
public class OrderItemDao {

	public void addOrderItem(List<OrderItem> OrderItems) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql="insert into orderitem values(?,?,?)";
		int rows = 0;
		for (OrderItem item : OrderItems) {
			String oid = item.getOrder().getId();
			String pid = item.getP().getId();
			int num = item.getBuynum();
			try {
				rows = runner.update(sql, oid,pid,num);
				System.out.println("addProduct"+rows);
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
		
	}

}
