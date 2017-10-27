package cfs.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ����ڰ� ��û�� Action�� execute ȣ��
 * ��� : ������
 */
public class URLHandler extends HttpServlet {
	Map<String, Action> map; // Action�� ���� ����
	
	/**
	 * URLHandler�� ó�� ȣ��� ��
	 * application�� ����� map�� this.map�� �����Ѵ�.
	 */
	@Override
	public void init() throws ServletException {
		map = (Map<String, Action>) super.getServletContext().getAttribute("map");
	}
	
	/**
	 * ����ڰ� URLHandler�� ��û�ϸ� 
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("command");
		
		map.get(key).execute(request, response);
	}
}
