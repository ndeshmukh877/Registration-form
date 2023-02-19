package com.user_details.service;

import java.util.List;

import com.user_details.entity.User;

public interface UserService {

	

	public void saveDetails(User user);

	public List<User> getAllList();

	public User getUserInfo(long id);

	public void updateUserInfo(User users);

	


}
