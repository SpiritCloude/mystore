package domain;

import java.util.List;

public class PageBean<T> {
	//����ǰҳ
	private int pageCode;
	//����ҳ�� = �ܼ�¼�� / ÿҳ��ʾ��¼��
	//private int totalPage;
	//���ܼ�¼��
	private int totalCount;
	//��ÿҳ��ʾ��¼��
	private int pageSize;
	//����ʾ������
	private List<T> beanList;
		
	public PageBean() {
		super();
		// TODO �Զ����ɵĹ��캯�����
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
