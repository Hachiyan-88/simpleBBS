package bbsServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/create")
public class CreateServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if ("userName".equals(c.getName())) {
					request.setAttribute("name", c.getValue());
				}
			}
		}

		request.getRequestDispatcher("/WEB-INF/pages/createPage.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String name = request.getParameter("name");
		String comment = request.getParameter("comment");

		String error = null;

		if (name == null || name.trim().isEmpty()) {
			error = "名前を入力してください";
		} else if (comment == null || comment.trim().isEmpty()) {
			error = "コメントを入力してください";
		}

		if (error != null) {

			request.setAttribute("error", error);
			request.setAttribute("name", name);
			request.setAttribute("comment", comment);

			request.getRequestDispatcher("/WEB-INF/pages/createPage.jsp").forward(request, response);
			return;
		}

		Cookie nameCookie = new Cookie("userName", name);
		nameCookie.setMaxAge(60 * 60 * 24 * 1);
		response.addCookie(nameCookie);

		HttpSession session = request.getSession();
		session.setAttribute("userName", name);

		Post post = new Post(name, comment);
		PostRepository.add(post);

		request.setAttribute("name", name);
		request.setAttribute("comment", comment);

		request.getRequestDispatcher("/WEB-INF/pages/completePage.jsp").forward(request, response);
	}
}
