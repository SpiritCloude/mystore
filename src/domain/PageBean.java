package domain;

import java.util.List;

public class PageBean<T> {
	//。当前页
	private int pageCode;
	//。总页数 = 总记录数 / 每页显示记录数
	//private int totalPage;
	//。总记录数
	private int totalCount;
	//。每页显示记录数
	private int pageSize;
	//。显示的数据
	private List<T> beanList;
		
	public PageBean() {
		super();
		// TODO 自动生成的构造函数存根
	}

	public int getPageCode() {
		return pageCode;
	}
	public void setPageCode(int pageCode) {
		this.pageCode = pageCode;
	}
	public int getTotalPage() {
		int totalPage = totalCount / pageSize;
		if (totalCount%pageSize!=0) {
			return totalPage+1;
		} 
		return totalPage;		
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<T> getBeanList() {
		return beanList;
	}
	public void setBeanList(List<T> beanList) {
		this.beanList = beanList;
	}
	
}
