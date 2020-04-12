package dao;

import java.util.List;

import domain.PageBean;
import domain.User;

public interface UserDao {
	public User findByNameAndPassword(User user);
 	public void addUser(User c);
 	public PageBean<User> findAll(int pageCode, int PageSize);
 	public User findById(String id);
 	public void update(User c);
 	public void delectById(String id);
	List<User> findProductNameById(String name, String role);

}