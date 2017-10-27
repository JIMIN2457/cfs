package cfs.model.service;

import java.sql.SQLException;
import java.util.List;

import cfs.model.dao.ProjectDAO;
import cfs.model.dao.UserDAO;
import cfs.model.dao.UserDAOImpl;
import cfs.model.dto.UserDTO;

/**
 * 서비스impl 기능구현 <br />
 * 담당 : 안민경
 */
public class UserServiceImpl implements UserService {
	UserDAO dao = new UserDAOImpl();
	@Override
	public int userInsert(UserDTO dto) throws SQLException {
		int result = dao.insert(dto);
		return result;
	}

	@Override
	public int userDelete(String id) throws SQLException {
		int result = dao.delete(id);
		return result;
	}

	@Override
	public int userUpdate(UserDTO dto) throws SQLException {
		int result = dao.update(dto);
		return result;
	}

	@Override
	public List<UserDTO> userSelectAll() throws SQLException {
		List<UserDTO> list = dao.selectAll();
		return list;
	}

	@Override
	public UserDTO userSelectOne(String id) throws SQLException {
		UserDTO dto = dao.selectOne(id);
		return dto;
		
	}
	
}
