package com.user_details.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.user_details.dto.UserData;
import com.user_details.entity.User;
import com.user_details.service.UserService;

//http://localhost:8080/register
@Controller
public class UserController {

	@Autowired
	private UserService userservice;

	@RequestMapping("/register")
	public String viewSignUpPage() {
		return "sign_up";
	}

	@RequestMapping("/save")
	public String saveDetails(@ModelAttribute("user") User user, Model model) {

		if (user.getOrganizationName().isEmpty()) {
			model.addAttribute("error1", "enter valid details");

			if (user.getFirstName().isEmpty()) {
				model.addAttribute("error2", "please enter valid value");
			}

			if (user.getLastName().isEmpty()) {
				model.addAttribute("error3", "please enter valid value");
			}
			if (user.getUserName().isEmpty()) {
				model.addAttribute("error4", "please fill user name details");
			}
			if (user.getPassword().isEmpty()) {
				model.addAttribute("error5", "please fill valid password");
			}
			if (!user.getPassword().equals(user.getPasswordConform())) {
				model.addAttribute("error6", "password does not match");
			}
			if (user.getSecurityQuestion().isEmpty()) {
				model.addAttribute("error7", "please enter valid value");
			}
			if (user.getSecurityAnswer().isEmpty()) {
				model.addAttribute("error8", "please enter valid value");
			}
			if (user.getPrimaryEmail().isEmpty()) {
				model.addAttribute("error9", "please fill email details");
			}

			return "sign_up";
		} else {
			userservice.saveDetails(user);
			model.addAttribute("msg", "sign up successfully!!");
			return "user_list";
		}

	}

	@RequestMapping("/list")
	public String userList(Model model) {
		List<User> users = userservice.getAllList();
		model.addAttribute("users", users);
		return "user_list";

	}
	
	@RequestMapping("/update")
	public String getUserInfo(@RequestParam("id") long id, Model model) {
		User user = userservice.getUserInfo(id);
		model.addAttribute("user",user);
		return "update_user";
	}
	
	@RequestMapping("/updateUser")
	public String updateUserInfo(UserData userdata, Model model) {
		User users = new User();
		
		users.setId(userdata.getId());
		users.setUserName(userdata.getUserName());
		users.setFirstName(userdata.getFirstName());
		
		userservice.updateUserInfo(users);
		
		List<User> list = userservice.getAllList();
		model.addAttribute("list", list);
		return"user_list";
	}

}
