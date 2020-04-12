package service;

import dao.ProductDao;
import dao.ProductDaoimp;
import domain.Product;

public class ProductService {

	public Product findProductById(String id) {
		ProductDao pDao=new ProductDaoimp();
		Product p =pDao.findProductById(id);
		return p;
	}
	public String findProductNameById(String id) {
		ProductDao pDao=new ProductDaoimp();
		String name =pDao.findProductNameById(id);
		return name;
	}
	
}
