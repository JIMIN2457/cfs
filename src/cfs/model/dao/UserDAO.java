package cfs.model.dao;

import java.sql.SQLException;
import java.util.List;

import cfs.model.dto.UserDTO;

/**
 * 회원에 대한 기능 설계 <br />
 * 담당 : 박지민
 */
public interface UserDAO {
	/**
	 * 아이디 중복 체크
	 * @param id 회원 아이디
	 * @return true 또는 false 를 리턴하는데 true면 중복을 뜻한다.
	 */
	boolean idCheck(String id) throws SQLException;
	
	/**
	 * 회원 정보 추가
	 * @param userDTO 회원 정보
	 * @return 0 또는 1이상의 값을 리턴하는데 0이면 실패, 1이상이면 성공을 뜻한다.
	 */
	int insert(UserDTO userDTO) throws SQLException;
	
	/**
	 * 회원 정보 수정
	 * @param userDTO 회원 정보
	 * @return 0 또는 1이상의 값을 리턴하는데 0이면 실패, 1이상이면 성공을 뜻한다.
	 */
	int update(UserDTO userDTO) throws SQLException;
	
	/**
	 * 회원 정보 삭제
	 * @param id 회원 아이디
	 * @return 0 또는 1이상의 값을 리턴하는데 0이면 실패, 1이상이면 성공을 뜻한다.
	 */
	int delete(String id) throws SQLException;
	
	/**
	 * 모든 회원 정보 검색
	 * @return List&ltUserDTO> 회원 정보 리스트
	 */
	List<UserDTO> selectAll() throws SQLException;
	
	/**
	 * 하나의 회원 정보 검색
	 * @return UserDTO 회원 정보
	 */
	UserDTO selectOne(String id) throws SQLException;
	
	/**
	 * 아이디 찾기
	 */
	String searchID(String email) throws SQLException;
	
	/**
	 * 비밀번호 찾기
	 */
	String serarchPassWord(String id, String email) throws SQLException;
}
