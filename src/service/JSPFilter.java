package service;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import domain.User;

public class JSPFilter implements Filter{
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		User user = (User) request.getSession().getAttribute("sUser");
		String url = request.getRequestURI();
		boolean one=(url.endsWith("registersuccess.jsp") || url.endsWith("Manager.jsp") || url.endsWith("regist.jsp")|| url.endsWith("login.jsp"));
		boolean bool=( user!=null || url.endsWith("index.jsp") || url.endsWith("logo.jsp"));
		if (one || bool) {
			arg2.doFilter(request,response);
			return;
		}
		if (user==null) {
			response.sendRedirect(request.getContextPath()+"/admin/js/login.jsp");
			return;
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
