package domain;

public class UserOrderItem {
	private String orderid;
	private String productid;
	private int bunum;
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public int getBunum() {
		return bunum;
	}
	public void setBunum(int bunum) {
		this.bunum = bunum;
	}

}
