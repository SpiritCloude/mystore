package domain;

public class OrderItem {

	private Order order;
	private Product p;
	private int buynum;
	public Order getOrder() {
		return order;
	}
	public void setOrderid(Order orderid) {
		this.order = orderid;
	}
	public Product getP() {
		return p;
	}
	public void setP(Product p) {
		this.p = p;
	}
	public int getBuynum() {
		return buynum;
	}
	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}
	
}
