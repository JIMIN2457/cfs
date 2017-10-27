package cfs.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 사용자가 요청한 Action의 execute 호출
 * 담당 : 박지민
 */
public class URLHandler extends HttpServlet {
	Map<String, Action> map; // Action을 담을 공간
	
	/**
	 * URLHandler이 처음 호출될 때
	 * application에 저장된 map을 this.map에 저장한다.
	 */
	@Override
	public void init() throws ServletException {
		map = (Map<String, Action>) super.getServletContext().getAttribute("map");
	}
	
	/**
	 * 사용자가 URLHandler를 요청하면 
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("command");
		
		map.get(key).execute(request, response);
	}
}
