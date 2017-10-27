package cfs.model.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import cfs.model.dto.UserDTO;
/**
 * ȸ���� ���� ���� ���� <br />
 * ��� : �ȹΰ�
 */
public interface UserService {
	/**
	 * ȸ������ DAO ȣ��
	 * @throws SQLException
	 */
	int userInsert(UserDTO dto) throws SQLException;
	/**
	 * ȸ��Ż�� DAO ȣ��
	 * @throws SQLException
	 */
	int userDelete(String id) throws SQLException;
	/**
	 * ȸ���������� DAO ȣ��
	 * @throws SQLException
	 */
	int userUpdate(UserDTO dto) throws SQLException;
	/**
	 * ȸ����ü�˻� DAO ȣ��
	 * ȸ����ü�˻��� �����ڸ� �� �� �־�� �ϴ°� �ƴѰ���?
	 * @throws SQLException
	 */
	List<UserDTO> userSelectAll() throws SQLException;
	/**
	 * ������ DAO ȣ��
	 * @throws SQLException
	 */
	UserDTO userSelectOne(String id) throws SQLException;
}
