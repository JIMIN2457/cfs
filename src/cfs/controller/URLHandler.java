package cfs.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * ��û�� ��ο� �ش��ϴ� �׼� ȣ�� - ��Ʈ�ѷ� <br />
 * ��� : ������ <br />
 * �ֱ� ���� ��¥ : 2017-10-30
 */
public class URLHandler extends HttpServlet {
	Map<String, Action> map;
	
	@Override
	public void init() throws ServletException {
		map = (Map<String, Action>) super.getServletContext().getAttribute("map");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("command");
		
		map.get(key).execute(request, response);
	}
}
