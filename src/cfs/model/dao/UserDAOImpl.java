package cfs.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cfs.model.dto.UserDTO;
import cfs.util.Dbutil;

public class UserDAOImpl implements UserDAO {

	@Override
	public boolean idCheck(String id) throws SQLException { //ID중복체크
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		boolean result = false;
		
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("select USER_ID from CFS_USER where USER_ID=?");
			ps.setString(1, id);
			
			rs = ps.executeQuery();
			 
			if(rs.next()) {
				result=true;
			}
		}finally {
			Dbutil.dbClose(con, ps, rs);
		}
		
		return result;
	}

	@Override
	public int insert(UserDTO userDTO) throws SQLException { //회원가입
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("insert into CFS_USER values(?,?,?,?,0)");
			ps.setString(1, userDTO.getId());
			ps.setString(2, userDTO.getName());
			ps.setString(3, userDTO.getPassword());
			ps.setString(4, userDTO.getEmail());
			
			result = ps.executeUpdate();
		}finally {
			Dbutil.dbClose(con, ps);
		}
		
		return result;
	}

	/**
	 * 회원정보수정 기능구현 <br />
	 * 담당 : 안민경
	 */
	@Override
	public int update(UserDTO userDTO) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("UPDATE CFS_USER SET USER_NAME=?,USER_PASSWORD=?,USER_EMAIL=? WHERE USER_ID=?");
			ps.setString(1, userDTO.getName());
			ps.setString(2, userDTO.getPassword());
			ps.setString(3, userDTO.getEmail());
			ps.setString(4, userDTO.getId());
			int result = ps.executeUpdate();
			
			return result;
			
		
		} finally {
			Dbutil.dbClose(con, ps);
		}
	
	}

	@Override
	public int delete(String id) throws SQLException { //ID삭제
		Connection con = null;
		PreparedStatement ps = null;
		int result=0;
		
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("delete from CFS_USER where USER_ID=?");
			ps.setString(1, id);
			
			result = ps.executeUpdate();
		}finally {
			Dbutil.dbClose(con, ps);
		}
		
		return result;
	}

	/**
	 * 회원전체검색 기능구현 <br />
	 * 담당 : 안민경
	 */
	@Override
	public List<UserDTO> selectAll() throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<UserDTO> list = new ArrayList<>();

		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("SELECT USER_EMAIL, USER_NAME, USER_PASSWORD, USER_ID, USER_GRADE FROM CFS_USER");
			rs = ps.executeQuery();
			while (rs.next()) {
				UserDTO dto = new UserDTO(rs.getString(4), rs.getString(2), rs.getString(3), rs.getString(1),
						rs.getInt(5));
				list.add(dto);
			}
			return list;

		} finally {
			Dbutil.dbClose(con, ps, rs);
		}

	}

	/**
	 * 내정보 기능구현 <br />
	 * 담당 : 안민경
	 */
	@Override
	public UserDTO selectOne(String id) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		UserDTO dto = null;

		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement(
					"SELECT USER_EMAIL, USER_NAME, USER_PASSWORD, USER_ID, USER_GRADE FROM CFS_USER WHERE USER_ID=?");
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				dto = new UserDTO(rs.getString(4), rs.getString(2), rs.getString(3), rs.getString(1), rs.getInt(5));

			}
			return dto;

		} finally {
			Dbutil.dbClose(con, ps, rs);
		}

	}
	
	@Override
	public String searchID(String email) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String id = null;
		
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("select USER_ID from CFS_USER where email=?");
			ps.setString(1, email);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				id = rs.getString(1);
			}
		}finally {
			Dbutil.dbClose(con, ps, rs);
		}
		return null;
	}
	
	@Override
	public String serarchPassWord(String id, String email) throws SQLException {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String password = null;
		
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("select USER_PASSWORD from CFS_USER where USER_ID=? and USER_EMAIL=?");
			ps.setString(1, id);
			ps.setString(2, email);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				password = rs.getString(1);
			}
		}finally {
			Dbutil.dbClose(con, ps, rs);
		}
		return password;
	}

}
