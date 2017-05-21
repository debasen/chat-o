package com.sensonic.chat.dao;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.sensonic.chat.model.UserModel;

import java.util.*;

public class UserDao {
	HibernateTemplate template;

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	// method to save UserModel
	public void saveUserModel(UserModel userModel) {
		template.save(userModel);
	}

	// method to update UserModel
	public void updateUserModel(UserModel userModel) {
		template.update(userModel);
	}

	// method to delete UserModel
	public void deleteUserModel(UserModel userModel) {
		template.delete(userModel);
	}

	// method to return one UserModel of given id
	public UserModel getById(String emailId) {
		UserModel userModel = (UserModel) template.get(UserModel.class, emailId);
		return userModel;
	}

	// method to return all UserModels
	public List<UserModel> getUserModels() {
		List<UserModel> list = new ArrayList<UserModel>();
		list = template.loadAll(UserModel.class);
		return list;
	}
}