package cfs.listener;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import cfs.controller.Action;

/**
 * �׼� ���� �غ� <br />
 * ��� : ������
 */
@WebListener
public class ActionMappingListener implements ServletContextListener {
	@Override
	public void contextDestroyed(ServletContextEvent e) {
		// ������
	}

	@Override
	public void contextInitialized(ServletContextEvent e) {
		// context-param ��������
		String fileName = e.getServletContext().getInitParameter("fileName");
		
		// 1. properties ���� �ε�
		
		// 1) ResourceBundle
		/*ResourceBundle rb = ResourceBundle.getBundle(fileName);
		
		for(String key : rb.keySet()) {
			String value = rb.getString(key);
			
			System.out.println(key + "=" + value);
		}*/
		
		// 2) Properties ��ü�� �б�
		try {
			Properties pro = new Properties();
			
			/*String path = e.getServletContext().getRealPath("/WEB-INF/classes/");
			
			pro.load(new FileInputStream(path + fileName));*/
			
			pro.load(e.getServletContext().getResourceAsStream("/WEB-INF/classes/" + fileName));
			
			Map<String, Action> map = new HashMap<>();
			
			// 2. key�� value �и� �� value�� ��üȭ
			for(Object key : pro.keySet()) {
				String value = pro.getProperty((String)key);
				
				Action action = (Action) Class.forName(value).newInstance();
				
				// 3. ��ü���� Map�� ����
				map.put((String) key, action);
				
				// 4. Map�� application ������ ����
				e.getServletContext().setAttribute("map", map);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}