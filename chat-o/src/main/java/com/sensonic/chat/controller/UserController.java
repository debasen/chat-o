package com.sensonic.chat.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sensonic.chat.model.UserModel;
import com.sensonic.chat.service.UserService;

@Controller
public class UserController {
	UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/")
	public ModelAndView showIndexPage() {
		return new ModelAndView("index", "command", new UserModel());
	}

	@RequestMapping("index.html")
	public ModelAndView showHomePage() {
		return new ModelAndView("index", "command", new UserModel());
	}

	@RequestMapping(value = "/submitLogin", method = RequestMethod.POST)

	public @ResponseBody String submitLogin(@RequestParam("email-id") String emailId,
			@RequestParam("pwd") String password, HttpSession session) {
		UserModel userModel = new UserModel();
		userModel.setEmailId(emailId);
		userModel.setPassword(password);
		String loginStatus = userService.checkLogin(userModel);
		if (loginStatus.equals("SUCCESS")) {
			UserModel user = userService.getUserById(emailId);
			session.setAttribute("emailId", user.getEmailId());
			session.setAttribute("fName", user.getFirstName());
		}
		return loginStatus;
	}

	@RequestMapping("/successLogin")
	public ModelAndView suceessLogin(@ModelAttribute("loginStatus") String loginStatus) {
		List<UserModel> list = userService.getUserList();
		return new ModelAndView("userList", "list", list);
	}

	@RequestMapping("/forgetPassword")
	public ModelAndView forgetPassword() {
		return new ModelAndView("forgetPassword");
	}

	@RequestMapping(value = "/checkRegistrationEmail", method = RequestMethod.POST)
	public @ResponseBody String checkRegistrationEmail(@RequestParam("email") String email) {
		return userService.checkRegistrationEmail(email);
	}

	@RequestMapping(value = "/sendAgain", method = RequestMethod.POST)
	public @ResponseBody String sendPasswordAgain(@RequestParam("emailId") String emailId) {
		UserModel userModel = userService.getUserById(emailId);
		userModel.setEmailId(emailId);
		userService.sendMail(userModel);
		return "success";
	}

	@RequestMapping("/chat")
	public ModelAndView chatView() {
		return new ModelAndView("chat");
	}
	
	@RequestMapping(value = "/submitRegistration", method = RequestMethod.POST)
	public ModelAndView submitRegistration(@ModelAttribute("userModel") UserModel userModel) {
		String newPass = userService.generatePassword();
		userModel.setPassword(newPass);
		userService.saveUser(userModel);
		userService.sendMail(userModel);
		Map<String, String> responseInfo = new HashMap<String, String>();
		responseInfo.put("emailId", userModel.getEmailId());
		responseInfo.put("commingFrom", "submitRegistration");
		return new ModelAndView("login", responseInfo);
	}

	@RequestMapping("/registrationSuccessFull")
	public ModelAndView registrationSuccessful() {

		return new ModelAndView("login", "commingFrom", "registrationSuccessFull");
	}

	@RequestMapping("/login")
	public ModelAndView showLoginPage() {

		return new ModelAndView("login");
	}

	@RequestMapping("/userList")
	public ModelAndView showUserList() {
		List<UserModel> list = userService.getUserList();
		return new ModelAndView("userList", "list", list);
	}

	@RequestMapping("/recoverPassword")
	public String recoverPassword() {
		return "forgetPassword";
	}

	@ModelAttribute("userModel")
	public UserModel getPerson() {
		return new UserModel();
	}
}
