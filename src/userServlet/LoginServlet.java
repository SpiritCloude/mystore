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

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Map<String, String[]> map = request.getParameterMap();
		User loginUser=new User();
		try {
			BeanUtils.populate(loginUser, map);
		} catch (IllegalAccessException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		String Scode=request.getParameter("code");
		String checkCode=(String) request.getSession().getAttribute("checkCode");
		System.out.println(loginUser+Scode +checkCode );
		if (!checkCode.equalsIgnoreCase(Scode)) {
			request.getSession().setAttribute("cUser", "验证码错误");
			request.getRequestDispatcher("/admin/js/login.jsp").forward(request, response);
			return;
		}
		UserService uService=new UserService();
		User sUser=uService.loginUser(loginUser);
		if (sUser==null) {
			request.setAttribute("sUser", "用户名或密码错误");
			request.getRequestDispatcher("/admin/js/login.jsp").forward(request, response);
			return;
		}
		request.getSession().setAttribute("sUser", sUser);
		response.sendRedirect(request.getContextPath()+"/admin/js/loginSuccess.jsp");
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
