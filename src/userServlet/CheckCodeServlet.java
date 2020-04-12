package userServlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class CheckServlet
 */
public class CheckCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckCodeServlet() {
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
		int width = 180;
		int height = 80;
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics2D g = (Graphics2D) image.getGraphics();
		g.setColor(Color.GRAY);
		g.fillRect(0, 0, width, height);
		g.setColor(Color.GREEN);
		g.drawRect(0, 0, width - 1, height - 1);
		String words = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		g.setColor(Color.PINK);
		g.setFont(new Font("¡• Ù", Font.BOLD, 26));
		Random random = new Random();
		int x = 20;
		int y = 45;
		StringBuffer checkCode=new StringBuffer();
		for (int i = 0; i < 4; i++) {
			int jiaodu=random.nextInt(60)-30;
			double hudu=jiaodu*Math.PI/180;
			g.rotate(hudu,x,y); 
			g.setColor(new Color(random.nextInt(256),random.nextInt(256),random.nextInt(256)));
			int index = random.nextInt(words.length());
			char ch = words.charAt(index);
			checkCode.append(ch);
			g.drawString(ch + "", x, y);
			g.rotate(-hudu,x,y); 
			x += 35;
		}
		System.out.println(checkCode);
		request.getSession().setAttribute("checkCode", checkCode.toString());
		g.setColor(Color.yellow);
		int x1, y1, x2, y2;
		for (int i = 0; i < 4; i++) {
			x1 = random.nextInt(width);
		 	y1 = random.nextInt(height);
			x2 = random.nextInt(width);
			y2 = random.nextInt(height);
			g.drawLine(x1, y1, x2, y2);
		}
		ImageIO.write(image, "jpg", response.getOutputStream());

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
