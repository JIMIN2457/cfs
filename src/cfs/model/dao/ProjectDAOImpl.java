package cfs.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cfs.model.dto.ProjectDTO;
import cfs.util.Dbutil;
/**
 * 프로젝트 crud 기본  -주영
 * */
public class ProjectDAOImpl implements ProjectDAO {

	@Override
	public int insert(ProjectDTO projectDTO) throws SQLException {
		PreparedStatement ps = null;
		Connection con = null;
		int result = 0;
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("insert into CFS_PROJECT(PROJECT_NO,PROJECT_SUBJECT"
					+ ",PROJECT_IMG,PROJECT_CONTEXT,PROJECT_CATEGORY,PROJECT_URL,"
					+ "START_DATE,LAST_DATE,PROJECT_CHECK,PROJECT_AVI,USER_ID,"
					+ "PROJECT_PRICE,PROJECT_TARGET_PRICE) values(0,?,?,?,?,?,' ',?,0,?,?,?,?)");
			ps.setString(1, projectDTO.getSubject());
			ps.setString(2, projectDTO.getImg());
			ps.setString(3, projectDTO.getContext());
			ps.setString(4, projectDTO.getCategory());
			ps.setString(5, projectDTO.getUrl());
			ps.setString(6, projectDTO.getLastDate());
			ps.setString(7, projectDTO.getAvi());
			ps.setString(8, projectDTO.getId());
			ps.setInt(9, projectDTO.getPrice());
			ps.setInt(10, projectDTO.getTargerPrice());
			result = ps.executeUpdate();
		} 
		finally {
			Dbutil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public int update(ProjectDTO projectDTO) throws SQLException {
		PreparedStatement ps = null;
		Connection con = null;
		int result = 0;
		try {
			if (projectDTO.getCheck() == 1) {
				return -1;
			} 
			else {
				con = Dbutil.getConnection();
				ps = con.prepareStatement("update CFS_PROJECT set PROJECT_SUBJECT=?,PROJECT_IMG=?,"
						+ "PROJECT_CONTEXT=?,PROJECT_CATEGORY=?,PROJECT_URL=?,LAST_DATE=?,PROJECT_AVI=?,"
						+ "PROJECT_TARGET_PRICE=? where PROJECT_NO=?");
				ps.setString(1, projectDTO.getSubject());
				ps.setString(2, projectDTO.getImg());
				ps.setString(3, projectDTO.getContext());
				ps.setString(4, projectDTO.getCategory());
				ps.setString(5, projectDTO.getUrl());
				ps.setString(6, projectDTO.getLastDate());
				ps.setString(7, projectDTO.getAvi());
				ps.setInt(8, projectDTO.getTargerPrice());
				ps.setInt(9, projectDTO.getNo());
				result = ps.executeUpdate();
			}
		}
		finally {
			Dbutil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public int delete(int no) throws SQLException {
		PreparedStatement ps = null;
		Connection con = null;
		int result = 0;
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("delete from CFS_PROJECT where PROJECT_NO=?");
			ps.setInt(1, no);
			result = ps.executeUpdate();
		} 
		finally {
			Dbutil.dbClose(con, ps);
		}
		return result;
	}

	@Override
	public List<ProjectDTO> selectAll() throws SQLException {
		PreparedStatement ps = null;
		Connection con = null;
		ResultSet rs = null;
		List<ProjectDTO> list =  new ArrayList<>();
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("select * from CFS_PROJECT");
			rs = ps.executeQuery();
			while(rs.next()) {
				ProjectDTO dto = 
						new ProjectDTO(rs.getInt(1), rs.getString(11), rs.getString(2), rs.getString(3),
							rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(10),
							rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(12), rs.getInt(13));
				list.add(dto);
			}
		} 
		finally {
			Dbutil.dbClose(con, ps, rs);
		}
		return list;
	}

	@Override
	public ProjectDTO selectOne(String userId) throws SQLException {
		PreparedStatement ps = null;
		Connection con = null;
		ResultSet rs = null;
		ProjectDTO dto = null;
		try {
			con = Dbutil.getConnection();
			ps = con.prepareStatement("select * from CFS_PROJECT where USER_ID = ?");
			ps.setString(1, userId);
			rs = ps.executeQuery();
			if(rs.next()) {
				dto = new ProjectDTO(rs.getInt(1), rs.getString(11), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(10),
						rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(12), rs.getInt(13));
			}
		} 
		finally {
			Dbutil.dbClose(con, ps, rs);
		}
		return dto;
	}

}
