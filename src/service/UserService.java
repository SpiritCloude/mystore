package service;

import java.util.List;
import dao.UserDao;
import dao.UserDaoimp;
import domain.PageBean;
import domain.User;

public class UserService {

	public User loginUser(User user) {
		UserDao userDao=new UserDaoimp();
		User sUser =userDao.findByNameAndPassword(user);
		return sUser;
	}

	public void registUser(User user) {
		UserDao userDao=new UserDaoimp();
		userDao.addUser(user);
	}
	
	public PageBean<User> findAll(int pageCode, int PageSize) {
		UserDao cDao=new UserDaoimp();		
		return cDao.findAll(pageCode, PageSize);
	}

	public User findById(String id) {
		UserDao userDao=new UserDaoimp();
		return userDao.findById(id);
	}

	public void update(User c) {
		UserDao userDao=new UserDaoimp();
		userDao.update(c);
	}
	public void delectById(String id) {
		UserDao userDao=new UserDaoimp();
		userDao.delectById(id);
	}
	public List<User> findByNameAndType(String name, String type) {
		UserDao userDao=new UserDaoimp();
		return userDao.findProductNameById(name, type);
		
	}
}
