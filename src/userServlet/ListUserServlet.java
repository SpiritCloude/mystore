package userServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import domain.PageBean;
import domain.User;
import service.UserService;

/**
 * Servlet implementation class UserServlet
 */
public class ListUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		int pageCode = getPages(request);
		int PageSize=6;
		UserService cService=new UserService();
		PageBean<User> page= cService.findAll(pageCode , PageSize);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/Manager/listUser.jsp").forward(request, response);
	}
	
	public int getPages(HttpServletRequest request) {
		String page=request.getParameter("page");
		if (page == null || page.trim().isEmpty()) {
			return 1;
		}
		return Integer.parseInt(page);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
