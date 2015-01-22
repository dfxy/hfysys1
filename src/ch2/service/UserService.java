/**
 * 
 */
package ch2.service;

import java.sql.Connection;
import java.util.List;

import ch2.dao.UserDAO;
import ch2.dao.impl.UserDAOImpl;
import ch2.util.db.Database;

import ch2.vo.User;
import ch2.vo.data;

/**
 * @author Administrator
 *
 */
public class UserService {
	private UserDAO userDAO=new UserDAOImpl();
	
	public void addUser(User user,String basePath)throws Exception{
		Connection connection = null;
		
		
		try{
			connection=Database.getConnection();
			userDAO.setConnection(connection);
			userDAO.addUser(user);
			Database.commit();
		}catch(Exception e){
			e.printStackTrace();
			Database.rollback();
			throw e;
		}finally{
			Database.releaseConnection(connection);
		}
	}
	public void adddata(data data)throws Exception{
		Connection connection = null;
		
		
		try{
			connection=Database.getConnection();
			userDAO.setConnection(connection);
			userDAO.adddata(data);
			Database.commit();
		}catch(Exception e){
			e.printStackTrace();
			Database.rollback();
			throw e;
		}finally{
			Database.releaseConnection(connection);
		}
	}
   public void deleteUser(String uid)throws Exception{
		Connection connection = null;
	   try{
		   connection=Database.getConnection();
		   userDAO.setConnection(connection);
		   userDAO.deleteUser(uid);
		   Database.commit();
	   }catch(Exception e){
		   e.printStackTrace();
		   Database.rollback();
		   throw e;
	   }finally{
		   Database.releaseConnection(connection);
	   }
   }
   public void updateUser(User user)throws Exception{
		Connection connection = null;
		try{
		   connection=Database.getConnection();
		   userDAO.setConnection(connection);
		   userDAO.updateUser(user);
		   Database.commit();
	   }catch(Exception  e){
		   e.printStackTrace();
		   Database.rollback();
		   throw e;
	   }finally{
		   Database.releaseConnection(connection);
	   }
   }
   public List listAllUser()throws Exception{
	   List userList=null;
	   Connection connection = null;
	   try{
		   connection=Database.getConnection();
		   userDAO.setConnection(connection);
		   userList=userDAO.listAllUser();
	   }catch(Exception e){
		   e.printStackTrace();
		   throw e;
	   }finally{
		   Database.releaseConnection(connection);		   
	   }	   
	   return userList;
   }
   public User getUser(String uid)throws Exception{
	   User user=null;
	   Connection connection = null;
	   try{
		   connection=Database.getConnection();
		   userDAO.setConnection(connection);
		   user=userDAO.getUser(uid);
	   }catch(Exception e){
		   e.printStackTrace();
		   throw e;
	   }finally{
		   Database.releaseConnection(connection);
	   }
	   return user;
   }
   public User getMyid(String Myid)throws Exception{
	   User user=null;
	   Connection connection = null;
	   try{
		   connection=Database.getConnection();
		   userDAO.setConnection(connection);
		   user=userDAO.getMyid(Myid);
	   }catch(Exception e){
		   e.printStackTrace();
		   throw e;
	   }finally{
		   Database.releaseConnection(connection);
	   }
	   return user;
   }
   public boolean login(String uid,String password)throws Exception{
	   User user=null;
	   boolean result=false;
	   Connection connection = null;
	   try{
		   connection=Database.getConnection();
		   userDAO.setConnection(connection);
		   user=userDAO.getUser(uid);
		   if(user!=null){
			   if(user.getPassword().equals(password)){
				   user.setLoginNum(user.getLoginNum()+1);
				   userDAO.updateUser(user);
				   Database.commit();
				   result=true;
			   }
			   else{ result=false; }
		   }else{ result=false;}
	   }catch(Exception e){
		   e.printStackTrace();
		   Database.rollback();		   
		   throw e;
	   }finally{
		   Database.releaseConnection(connection);
	   }
	   return result;
   }
   public boolean checkUid(String uid)throws Exception{	   
	   try{
		   User user=getUser(uid);
		   if(user==null)
			   return false;
		   else
			   return true;
	   }catch(Exception e){
		   throw e;
	   }
   }
   public boolean checkMyid(String myid)throws Exception{	   
	   try{
		   User user=getMyid(myid);
		   if(user==null)
			   return false;
		   else
			   return true;
	   }catch(Exception e){
		   throw e;
	   }
   }
/**
 * @return Returns the userDAO.
 */
public UserDAO getUserDAO() {
	return userDAO;
}
/**
 * @param userDAO The userDAO to set.
 */
public void setUserDAO(UserDAO userDAO) {
	this.userDAO = userDAO;
}
   
}
