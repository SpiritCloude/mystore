package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import domain.PageBean;
import domain.User;
import utils.JdbcUtil;

//持久层
public class UserDaoimp implements UserDao {
	@Override
	public User findByNameAndPassword(User user) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql = "select * from `user` where `username`=? and `password`=?";
		User sUser = null;
		try {
			sUser = runner.query(sql, new BeanHandler<User>(User.class), user.getUsername(), user.getPassword());
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		System.out.println(sUser);
		return sUser;
	}

	@Override
	public void addUser(User u) {
		// TODO 自动生成的方法存根
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql = "insert into `user` values (?,?,?,?,?,?,?,?)";
		Object params[] = { u.getId(), u.getUsername(), u.getPassword(), u.getGender(), u.getTelephone(), u.getState(),
				u.getRole(), u.getBirthday() };
		int rows = 0;
		try {
			rows = runner.update(sql, params);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		System.out.println(rows);
	}

	public PageBean<User> findAll(int pageCode, int PageSize) {
		// TODO 自动生成的方法存根
		PageBean<User> pBean=new PageBean<User>();
		pBean.setPageCode(pageCode);
		pBean.setPageSize(PageSize);
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String countSql = "select count(*) from user";
		String sql = "select * from user limit ?,? ";
		try {
			long  count = runner.query(countSql, new ScalarHandler<>());
			pBean.setTotalCount((int)count);
			//limit a,b  a=(当前页-1)*10  ， b=PageSize每页容量
			List<User> userList= runner.query(sql, new BeanListHandler<User>(User.class), (pageCode-1)*PageSize, PageSize);
			pBean.setBeanList(userList);
		
		} catch (SQLException e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		}
		
		return pBean;
	}

	@Override
	public void update(User c) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql = "update user set `username`=?,`password`=?,`gender`=?,`telephone`=?,`role`=?,`birthday`=? where id=?";
		Object [] params= {c.getUsername(),c.getPassword(),c.getGender(),c.getTelephone(),c.getRole(),c.getBirthday(),c.getId()};
		try {
			runner.update(sql, params);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}

	@Override
	public void delectById(String id) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql = "DELETE FROM `shopping`.`user` WHERE `id`=?";
		try {
			runner.update(sql, id);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}

	@Override
	public User findById(String id) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		String sql = "select * from `user` where `id`=?";
		User sUser = null;
		try {
			sUser = runner.query(sql, new BeanHandler<User>(User.class), id);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		System.out.println(sUser);
		return sUser;
	}

	public List<User> findProductNameById(String name, String role) {
		QueryRunner runner = new QueryRunner(JdbcUtil.getDataSource());
		StringBuffer sql = new StringBuffer("select * from user where 1=1 ");
		List<User> list = null;
		List<Object> params = new ArrayList<Object>();
		if (name!=null && !name.trim().isEmpty()) {
			sql.append("and `username`=?");
			params.add(name);
		}
		if (role!=null && !role.trim().isEmpty()) {
			sql.append("and role=?");
			params.add(role);	
		}
		try {
			list= runner.query(sql.toString(),new BeanListHandler<User>(User.class),params.toArray());
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		return list;
	}
}
