package cfs.model.dao;

import java.sql.SQLException;
import java.util.List;

import cfs.model.dto.UserDTO;

/**
 * ȸ���� ���� ��� ���� <br />
 * ��� : ������
 */
public interface UserDAO {
	/**
	 * ���̵� �ߺ� üũ
	 * @param id ȸ�� ���̵�
	 * @return true �Ǵ� false �� �����ϴµ� true�� �ߺ��� ���Ѵ�.
	 */
	boolean idCheck(String id) throws SQLException;
	
	/**
	 * ȸ�� ���� �߰�
	 * @param userDTO ȸ�� ����
	 * @return 0 �Ǵ� 1�̻��� ���� �����ϴµ� 0�̸� ����, 1�̻��̸� ������ ���Ѵ�.
	 */
	int insert(UserDTO userDTO) throws SQLException;
	
	/**
	 * ȸ�� ���� ����
	 * @param userDTO ȸ�� ����
	 * @return 0 �Ǵ� 1�̻��� ���� �����ϴµ� 0�̸� ����, 1�̻��̸� ������ ���Ѵ�.
	 */
	int update(UserDTO userDTO) throws SQLException;
	
	/**
	 * ȸ�� ���� ����
	 * @param id ȸ�� ���̵�
	 * @return 0 �Ǵ� 1�̻��� ���� �����ϴµ� 0�̸� ����, 1�̻��̸� ������ ���Ѵ�.
	 */
	int delete(String id) throws SQLException;
	
	/**
	 * ��� ȸ�� ���� �˻�
	 * @return List&ltUserDTO> ȸ�� ���� ����Ʈ
	 */
	List<UserDTO> selectAll() throws SQLException;
	
	/**
	 * �ϳ��� ȸ�� ���� �˻�
	 * @return UserDTO ȸ�� ����
	 */
	UserDTO selectOne(String id) throws SQLException;
	
	/**
	 * ���̵� ã��
	 */
	String searchID(String email) throws SQLException;
	
	/**
	 * ��й�ȣ ã��
	 */
	String serarchPassWord(String id, String email) throws SQLException;
}
