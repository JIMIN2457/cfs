package cfs.model.dao;

import java.sql.SQLException;
import java.util.List;

import cfs.model.dto.ProjectDTO;
import cfs.model.dto.UserDTO;

/**
 * 프로젝트에 대한 기능 설계 <br />
 * 담당 : 박지민
 */
public interface ProjectDAO {
	/**
	 * 프로젝트 정보 추가
	 * @param ProjectDTO 프로젝트 정보
	 * @return 0 또는 1이상의 값을 리턴하는데 0이면 실패, 1이상이면 성공을 뜻한다.
	 */
	int insert(ProjectDTO projectDTO) throws SQLException;
	
	/**
	 * 프로젝트 정보 수정
	 * @param ProjectDTO 프로젝트 정보
	 * @return 0 또는 1이상의 값을 리턴하는데 0이면 실패, 1이상이면 성공을 뜻한다.
	 */
	int update(ProjectDTO projectDTO) throws SQLException;
	
	/**
	 * 프로젝트 정보 삭제
	 * @param no 프로젝트 고유번호
	 * @return 0 또는 1이상의 값을 리턴하는데 0이면 실패, 1이상이면 성공을 뜻한다.
	 */
	int delete(int no) throws SQLException;
	
	/**
	 * 모든 프로젝트 정보 검색
	 * @return List&ltProjectDTO> 프로젝트 정보 리스트
	 */
	List<ProjectDTO> selectAll() throws SQLException;
	
	/**
	 * 하나의 프로젝트 정보 검색
	 * @param id 회원 아이디
	 * @return ProjectDTO 프로젝트 정보
	 */
	ProjectDTO selectOne(String id) throws SQLException;
}
