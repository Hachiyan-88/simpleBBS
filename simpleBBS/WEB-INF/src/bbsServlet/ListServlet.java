package bbsServlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/list")
public class ListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Post> postList = PostRepository.getAll();
		request.setAttribute("postList", postList);

		// JSP にフォワード
		request.getRequestDispatcher("/WEB-INF/pages/listPage.jsp").forward(request, response);
	}
}
