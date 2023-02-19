package com.user_details.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user_details.entity.User;
import com.user_details.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepo;

	public void saveDetails(User user) {
		userRepo.save(user);
	}

	@Override
	public List<User> getAllList() {
		List<User> users = userRepo.findAll();
		return users;
	}

	@Override
	public User getUserInfo(long id) {
		Optional<User> findById = userRepo.findById(id);
		User user = findById.get();
		return user;
	}

	@Override
	public void updateUserInfo(User users) {
		userRepo.save(users);
	}

}
