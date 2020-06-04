package kr.ac.hansung.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	/* @RequestMapping(value="/login", method = RequestMethod.GET) */
	@RequestMapping(value="/login")
	public String showLogin(@RequestParam(value="error", required=false) String error,
							@RequestParam(value="logout", required=false) String logout, Model model) {
		if(error != null) {
			model.addAttribute("errorMsg", "Invalid username and password");
		}
		if(logout != null) {
			model.addAttribute("logoutMsg", "You have been logged out successfully");
		}
		
		return "login";
	}
}