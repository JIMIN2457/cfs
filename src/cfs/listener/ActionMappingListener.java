package cfs.listener;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import cfs.controller.Action;

/**
 * 액션 맵핑 준비 <br />
 * 담당 : 박지민
 */
@WebListener
public class ActionMappingListener implements ServletContextListener {
	@Override
	public void contextDestroyed(ServletContextEvent e) {
		// 사용안함
	}

	@Override
	public void contextInitialized(ServletContextEvent e) {
		// context-param 가져오기
		String fileName = e.getServletContext().getInitParameter("fileName");
		
		// 1. properties 파일 로딩
		
		// 1) ResourceBundle
		/*ResourceBundle rb = ResourceBundle.getBundle(fileName);
		
		for(String key : rb.keySet()) {
			String value = rb.getString(key);
			
			System.out.println(key + "=" + value);
		}*/
		
		// 2) Properties 객체로 읽기
		try {
			Properties pro = new Properties();
			
			/*String path = e.getServletContext().getRealPath("/WEB-INF/classes/");
			
			pro.load(new FileInputStream(path + fileName));*/
			
			pro.load(e.getServletContext().getResourceAsStream("/WEB-INF/classes/" + fileName));
			
			Map<String, Action> map = new HashMap<>();
			
			// 2. key와 value 분리 후 value를 객체화
			for(Object key : pro.keySet()) {
				String value = pro.getProperty((String)key);
				
				Action action = (Action) Class.forName(value).newInstance();
				
				// 3. 객체들을 Map에 저장
				map.put((String) key, action);
				
				// 4. Map을 application 영역에 저장
				e.getServletContext().setAttribute("map", map);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}