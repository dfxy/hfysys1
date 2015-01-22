/**
 * 
 */
package ch2.vo;

/**
 * @author Administrator
 */
public class User {
	private int id;

	private String uid;
	
	private String myid;

	private String password;

	private String realName;

	private int gender;

	private String email;

	private String tel;

	private int role;

	private String answer;

	private int loginNum;

	/**
	 * @return Returns the answer.
	 */
	public String getAnswer() {
		return answer;
	}

	/**
	 * @param answer
	 *            The answer to set.
	 */
	public void setAnswer(String answer) {
		this.answer = answer;
	}

	/**
	 * @return Returns the email.
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            The email to set.
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return Returns the gender.
	 */
	public int getGender() {
		return gender;
	}

	/**
	 * @param gender
	 *            The gender to set.
	 */
	public void setGender(int gender) {
		this.gender = gender;
	}

	/**
	 * @return Returns the id.
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            The id to set.
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return Returns the password.
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password
	 *            The password to set.
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return Returns the role.
	 */
	public int getrole() {
		return role;
	}

	/**
	 * @param gender
	 *            The gender to set.
	 */
	public void setrole(int role) {
		this.role = role;
	}
	/**
	 * @return Returns the realName.
	 */
	public String getRealName() {
		return realName;
	}

	/**
	 * @param realName
	 *            The realName to set.
	 */
	public void setRealName(String realName) {
		this.realName = realName;
	}

	/**
	 * @return Returns the tel.
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * @param tel
	 *            The tel to set.
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/**
	 * @return Returns the uid.
	 */
	public String getUid() {
		return uid;
	}

	/**
	 * @param uid
	 *            The uid to set.
	 */
	public void setUid(String uid) {
		this.uid = uid;
	}

	/**
	 * @return Returns the validateCode.
	 */
	public String getMyid() {
		return myid;
	}

	/**
	 * @param validateCode
	 *            The validateCode to set.
	 */
	public void setMyid(String myid) {
		this.myid =myid;
	}

	/**
	 * @return Returns the loginNum.
	 */
	public int getLoginNum() {
		return loginNum;
	}

	/**
	 * @param loginNum The loginNum to set.
	 */
	public void setLoginNum(int loginNum) {
		this.loginNum = loginNum;
	}

}
