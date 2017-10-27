package cfs.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cfs.model.dto.UserDTO;
import cfs.model.service.UserServiceImpl;

public class UserSelectAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserServiceImpl service = new UserServiceImpl();
		try {
			List<UserDTO> list = service.userSelectAll();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
