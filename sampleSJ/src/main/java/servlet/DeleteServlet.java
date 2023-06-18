package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.RegisterLogic;
import model.TodoBeans;
import model.UserBeans;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String text = request.getParameter("text");
		

		if(text != null && text.length() != 0) {

			ServletContext application = this.getServletContext();
			List<TodoBeans> todoList = (List<TodoBeans>) application.getAttribute("todoList");

			HttpSession session = request.getSession();
			UserBeans loginUser = (UserBeans) session.getAttribute("user");

			TodoBeans todo = new TodoBeans(loginUser.getName(), text);
			RegisterLogic registerTodo = new RegisterLogic();
			registerTodo.execute(todo, todoList);

			application.setAttribute("todoList", todoList);
		} else {
			request.setAttribute("errorMsg","タスクが入力されていません");
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/todo.jsp");
		dispatcher.forward(request, response);
	}

}
