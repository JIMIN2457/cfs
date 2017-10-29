package cfs.model.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import cfs.model.dto.UserDTO;
/**
 * 회원에 대한 서비스 설계 <br />
 * 담당 : 안민경
 */
public interface UserService {
	/**
	 * 회원가입 DAO 호출
	 * @throws SQLException
	 */
	int userInsert(UserDTO dto) throws SQLException;
	/**
	 * 회원탈퇴 DAO 호출
	 * @throws SQLException
	 */
	int userDelete(String id) throws SQLException;
	/**
	 * 회원정보수정 DAO 호출
	 * @throws SQLException
	 */
	int userUpdate(UserDTO dto) throws SQLException;
	/**
	 * 회원전체검색 DAO 호출
	 * 회원전체검색은 관리자만 할 수 있어야 하는거 아닌가요?
	 * @throws SQLException
	 */
	List<UserDTO> userSelectAll() throws SQLException;
	/**
	 * 내정보 DAO 호출
	 * @throws SQLException
	 */
	UserDTO userSelectOne(String id) throws SQLException;
}
