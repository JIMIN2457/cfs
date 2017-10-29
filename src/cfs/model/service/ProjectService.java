package cfs.model.service;

import java.sql.SQLException;
import java.util.List;

import cfs.model.dao.ProjectDAO;
import cfs.model.dao.ProjectDAOImpl;
import cfs.model.dto.ProjectDTO;
/**
 * ProjectService�κ� - ���ֿ�
 * */
public class ProjectService {
	static ProjectDAO dao = new ProjectDAOImpl();
	/**
	 * ������Ʈ ���� �߰�
	 * @param ProjectDTO ������Ʈ ����
	 * @return 0 �Ǵ� 1�̻��� ���� �����ϴµ� 0�̸� ����, 1�̻��̸� ������ ���Ѵ�.
	 */
	public static int insert(ProjectDTO projectDTO) throws SQLException{
		int result = dao.insert(projectDTO);
		return result;
	}
	
	/**
	 * ������Ʈ ���� ����
	 * @param ProjectDTO ������Ʈ ����
	 * @return 0 �Ǵ� 1�̻��� ���� �����ϴµ� 0�̸� ����, 1�̻��̸� ������ ���Ѵ�.
	 */
	public static int update(ProjectDTO projectDTO) throws SQLException{
		int result = dao.update(projectDTO);
		return result;
	}
	
	/**
	 * ������Ʈ ���� ����
	 * @param no ������Ʈ ������ȣ
	 * @return 0 �Ǵ� 1�̻��� ���� �����ϴµ� 0�̸� ����, 1�̻��̸� ������ ���Ѵ�.
	 */
	public static int delete(int no) throws SQLException{
		int result = dao.delete(no);
		return result;
	}
	
	/**
	 * ��� ������Ʈ ���� �˻�
	 * @return List&ltProjectDTO> ������Ʈ ���� ����Ʈ
	 */
	public static List<ProjectDTO> selectAll() throws SQLException{
		List<ProjectDTO> list = dao.selectAll();
		return list;
	}
	
	/**
	 * �ϳ��� ������Ʈ ���� �˻�
	 * @param id ȸ�� ���̵�
	 * @return ProjectDTO ������Ʈ ����
	 */
	public static ProjectDTO selectOne(String id) throws SQLException{
		ProjectDTO dto = dao.selectOne(id);
		return dto;
	}
}
