package dao;

import domain.Product;

public interface ProductDao {
	public Product findProductById(String id);

	public String findProductNameById(String id);

}
