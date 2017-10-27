package cfs.model.dao;

import java.sql.SQLException;
import java.util.List;

import cfs.model.dto.ProjectDTO;
import cfs.model.dto.UserDTO;

/**
 * ������Ʈ�� ���� ��� ���� <br />
 * ��� : ������
 */
public interface ProjectDAO {
	/**
	 * ������Ʈ ���� �߰�
	 * @param ProjectDTO ������Ʈ ����
	 * @return 0 �Ǵ� 1�̻��� ���� �����ϴµ� 0�̸� ����, 1�̻��̸� ������ ���Ѵ�.
	 */
	int insert(ProjectDTO projectDTO) throws SQLException;
	
	/**
	 * ������Ʈ ���� ����
	 * @param ProjectDTO ������Ʈ ����
	 * @return 0 �Ǵ� 1�̻��� ���� �����ϴµ� 0�̸� ����, 1�̻��̸� ������ ���Ѵ�.
	 */
	int update(ProjectDTO projectDTO) throws SQLException;
	
	/**
	 * ������Ʈ ���� ����
	 * @param no ������Ʈ ������ȣ
	 * @return 0 �Ǵ� 1�̻��� ���� �����ϴµ� 0�̸� ����, 1�̻��̸� ������ ���Ѵ�.
	 */
	int delete(int no) throws SQLException;
	
	/**
	 * ��� ������Ʈ ���� �˻�
	 * @return List&ltProjectDTO> ������Ʈ ���� ����Ʈ
	 */
	List<ProjectDTO> selectAll() throws SQLException;
	
	/**
	 * �ϳ��� ������Ʈ ���� �˻�
	 * @param id ȸ�� ���̵�
	 * @return ProjectDTO ������Ʈ ����
	 */
	ProjectDTO selectOne(String id) throws SQLException;
}
