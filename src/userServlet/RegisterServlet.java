package userServlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import domain.User;
import service.UserService;
import utils.IdUtils;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		User user = new User();
		try {
			Map<String, String[]> map = request.getParameterMap();
			BeanUtils.populate(user, map);
		} catch (IllegalAccessException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		String id =IdUtils.creatId();
		user.setId(id);
		System.out.println(user);
		if (user!=null) {
			UserService uService=new UserService();
			uService.registUser(user);
		}
		response.sendRedirect(request.getContextPath()+"/admin/js/registersuccess.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
