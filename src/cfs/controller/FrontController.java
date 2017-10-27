package cfs.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * FrontController - ����ڰ� ��û�� Action�� execute ȣ��
 */

public class FrontController extends HttpServlet {
	Map<String, Action> map; // Action�� ���� ����
	
	/**
	 * FrontController�� ó�� ȣ��� ��
	 * application�� ����� map�� this.map�� �����Ѵ�.
	 */
	@Override
	public void init() throws ServletException {
		map = (Map<String, Action>) super.getServletContext().getAttribute("map");
	}
	
	/**
	 * ����ڰ� FrontController�� ��û�ϸ� 
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("command");
		
		map.get(key).execute(request, response);
	}
}
