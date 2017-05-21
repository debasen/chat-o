package com.sensonic.chat.service;

import java.util.List;

import com.sensonic.chat.dao.UserDao;
import com.sensonic.chat.model.UserModel;
import com.sensonic.util.PasswordUtil;
import com.sensonic.util.SendEmail;

public class UserService {
	UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public String checkLogin(UserModel userModel) {
		UserModel gotUserModel = userDao.getById(userModel.getEmailId());
		return gotUserModel == null ? "FAIL|NO_USER"
				: gotUserModel.getPassword().equals(userModel.getPassword()) ? "SUCCESS" : "FAIL|WRONG_PASS";
	}

	public void saveUser(UserModel userModel) {
		userDao.saveUserModel(userModel);
	}

	public List<UserModel> getUserList() {
		return userDao.getUserModels();
	}

	public UserModel getUserById(String emailId) {
		return userDao.getById(emailId);
	}
	
	public String checkRegistrationEmail(String emailId) {
		return userDao.getById(emailId) == null ? "NEW_EMAIL" : "EXISTING_EMAIL";

	}

	public void sendMail(UserModel userModel) {
		String to = userModel.getEmailId();
		String message = "<html><body><h1>Welcome " + userModel.getFirstName()
				+ "</h1></br></br><p>Your account is created successfully. Please use the following credential to Login:</p></br></br>"
				+ "<p><b>Email: </b>" + userModel.getEmailId() + "</p></br>" + "<p><b>Password: </b>"
				+ userModel.getPassword() + "</p></br>" + "</body></html>";
		SendEmail.sendMail(to, message);

	}

	public String generatePassword() {
		return PasswordUtil.generatePassword();
	}
}
