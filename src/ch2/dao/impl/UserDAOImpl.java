
package ch2.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ch2.dao.UserDAO;
import ch2.util.db.Database;
import ch2.vo.User;
import ch2.vo.data;

public class UserDAOImpl implements UserDAO {
	private Connection connection;
    
	public UserDAOImpl() {
		try {
			connection = Database.getConnection();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		}
	}
	


	public Connection getConnection() {
		return connection;
	}


	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	public void addUser(User user) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;

		try {
			ps = connection
			.prepareStatement("Insert into user(uid,myid,password,realName,gender,tel,email,role,answer) values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, user.getUid());
			ps.setString(2, user.getMyid());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getRealName());
			ps.setInt(5, user.getGender());
			ps.setString(6, user.getTel());
			ps.setString(7, user.getEmail());
			ps.setInt(8, user.getrole());
			ps.setString(9, user.getAnswer());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeStatement(ps);
		}
	}
	public void adddata(data data) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;

		try {
			ps = connection
			.prepareStatement("Insert into data(uid,myid,leftluoshi,rightluoshi,leftjiaozheng,rightjiaozheng) values(?,?,?,?,?,?)");
			ps.setString(1, data.getUid());
			ps.setString(2, data.getMyid());
			ps.setString(3, data.getleftluoshi());
			ps.setString(4, data.getrightluoshi());
			ps.setString(5, data.getleftjiaozheng());
			ps.setString(6, data.getrightjiaozheng());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeStatement(ps);
		}
	}

	public void updateUser(User user) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;

		try {
			ps = connection
					.prepareStatement("update user set password=?,realName=?,gender=?,tel=?,email=?,role=?,answer=?,myid=?,loginNum=? where uid=? ");
			ps.setString(1, user.getPassword());
			ps.setString(2, user.getRealName());
			ps.setInt(3, user.getGender());
			ps.setString(4, user.getTel());
			ps.setString(5, user.getEmail());
			ps.setInt(6, user.getrole());
			ps.setString(7, user.getAnswer());
			ps.setString(8, user.getMyid());
			ps.setInt(9, user.getLoginNum());
			ps.setString(10, user.getUid());
			ps.executeUpdate();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeStatement(ps);
		}
	}

	public void deleteUser(String uid) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;

		try {
			ps = connection.prepareStatement("delete from user where uid=?");
			ps.setString(1, uid);
			ps.executeUpdate();
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeStatement(ps);
		}
	}

	public List listAllUser() throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;
		ResultSet rs = null;
		List result = null;

		try {
			ps = connection
					.prepareStatement("select * from user order by uid asc");
			rs = ps.executeQuery();
			User user = null;
			result = new ArrayList();
			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUid(rs.getString("uid"));
				user.setPassword(rs.getString("password"));
				user.setRealName(rs.getString("realName"));
				user.setGender(rs.getInt("gender"));
				user.setTel(rs.getString("tel"));
				user.setEmail(rs.getString("email"));
				user.setrole(rs.getInt("role"));
				user.setAnswer(rs.getString("answer"));
				user.setMyid(rs.getString("myid"));
				user.setLoginNum(rs.getInt("loginNum"));
				result.add(user);
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return result;
	}

	public User getUser(String uid) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;

		try {
			ps = connection.prepareStatement("select * from user where uid=?");
			ps.setString(1, uid);
			rs = ps.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUid(rs.getString("uid"));
				user.setPassword(rs.getString("password"));
				user.setRealName(rs.getString("realName"));
				user.setGender(rs.getInt("gender"));
				user.setTel(rs.getString("tel"));
				user.setEmail(rs.getString("email"));
				user.setrole(rs.getInt("role"));
				user.setAnswer(rs.getString("answer"));
				user.setMyid(rs.getString("myid"));
				user.setLoginNum(rs.getInt("loginNum"));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return user;
	}
	public User getMyid(String myid) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement ps = null;
		ResultSet rs = null;
		User user = null;

		try {
			ps = connection.prepareStatement("select * from user where myid=?");
			ps.setString(1, myid);
			rs = ps.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUid(rs.getString("uid"));
				user.setPassword(rs.getString("password"));
				user.setRealName(rs.getString("realName"));
				user.setGender(rs.getInt("gender"));
				user.setTel(rs.getString("tel"));
				user.setEmail(rs.getString("email"));
				user.setrole(rs.getInt("role"));
				user.setAnswer(rs.getString("answer"));
				user.setMyid(rs.getString("myid"));
				user.setLoginNum(rs.getInt("loginNum"));
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
			throw sqle;
		} finally {
			closeResultSet(rs);
			closeStatement(ps);
		}
		return user;
	}

	public static void closeStatement(Statement st) {
		if (st != null) {
			try {
				st.close();
				st = null;
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}

	public static void closeResultSet(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
				rs = null;
			} catch (SQLException sqle) {
				sqle.printStackTrace();
			}
		}
	}
}
