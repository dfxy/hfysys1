/**
 * 
 */
package ch2.dao;

import java.sql.Connection;
import java.util.List;

import ch2.vo.User;
import ch2.vo.data;

/**
 * @author Administrator
 */
public interface UserDAO {
	public void addUser(User user)throws Exception;
	public void adddata(data data)throws Exception;

	public void updateUser(User user)throws Exception;

	public void deleteUser(String uid)throws Exception;

	public List listAllUser()throws Exception;

	public User getUser(String uid)throws Exception;
	
	public User getMyid(String myid)throws Exception;
	
	public Connection getConnection()throws Exception;
	
	public void setConnection(Connection connection)throws Exception;
	
}
