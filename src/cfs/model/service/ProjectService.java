package cfs.model.service;

import java.sql.SQLException;
import java.util.List;

import cfs.model.dao.ProjectDAO;
import cfs.model.dao.ProjectDAOImpl;
import cfs.model.dto.ProjectDTO;
/**
 * ProjectService부분 - 김주영
 * */
public class ProjectService {
	static ProjectDAO dao = new ProjectDAOImpl();
	/**
	 * 프로젝트 정보 추가
	 * @param ProjectDTO 프로젝트 정보
	 * @return 0 또는 1이상의 값을 리턴하는데 0이면 실패, 1이상이면 성공을 뜻한다.
	 */
	public static int insert(ProjectDTO projectDTO) throws SQLException{
		int result = dao.insert(projectDTO);
		return result;
	}
	
	/**
	 * 프로젝트 정보 수정
	 * @param ProjectDTO 프로젝트 정보
	 * @return 0 또는 1이상의 값을 리턴하는데 0이면 실패, 1이상이면 성공을 뜻한다.
	 */
	public static int update(ProjectDTO projectDTO) throws SQLException{
		int result = dao.update(projectDTO);
		return result;
	}
	
	/**
	 * 프로젝트 정보 삭제
	 * @param no 프로젝트 고유번호
	 * @return 0 또는 1이상의 값을 리턴하는데 0이면 실패, 1이상이면 성공을 뜻한다.
	 */
	public static int delete(int no) throws SQLException{
		int result = dao.delete(no);
		return result;
	}
	
	/**
	 * 모든 프로젝트 정보 검색
	 * @return List&ltProjectDTO> 프로젝트 정보 리스트
	 */
	public static List<ProjectDTO> selectAll() throws SQLException{
		List<ProjectDTO> list = dao.selectAll();
		return list;
	}
	
	/**
	 * 하나의 프로젝트 정보 검색
	 * @param id 회원 아이디
	 * @return ProjectDTO 프로젝트 정보
	 */
	public static ProjectDTO selectOne(String id) throws SQLException{
		ProjectDTO dto = dao.selectOne(id);
		return dto;
	}
}
