package cfs.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cfs.model.dto.UserDTO;
import cfs.model.service.UserService;
import cfs.model.service.UserServiceImpl;

@WebServlet("/insert")
public class UserInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			UserService service = new UserServiceImpl();
			
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String password1 = request.getParameter("password");
			String email = request.getParameter("email");
			
			//service.insert(new UserDTO(id,name,password,password1,email));
			
			request.getRequestDispatcher("").forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
			request.getRequestDispatcher("").forward(request, response);
		}

	}
}
