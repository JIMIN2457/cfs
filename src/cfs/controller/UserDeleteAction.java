package cfs.controller;

import java.io.IOException;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cfs.model.service.UserService;
import cfs.model.service.UserServiceImpl;

@WebServlet("/delete")
public class UserDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		try {
			UserService service = new UserServiceImpl();
			if(id == null) {
				throw new SQLException("정보가 정확하지 않습니다");
			}
			int result = service.userDelete(id);
			
			
			request.getRequestDispatcher("").forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
			request.getRequestDispatcher("").forward(request, response);
		}
	}

}
