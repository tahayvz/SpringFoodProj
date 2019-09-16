package com.works.foodtown;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.User;
import util.DB;
import util.Util;

@Controller
public class UserLoginController {
	
	DB db = new DB();
	static int uid;

	// login page create
	@RequestMapping(value = "/loginuser", method = RequestMethod.GET)
	public String login() {
		return "login";
	}

	//  login fnc
	@RequestMapping(value = "/loginuserpost", method = RequestMethod.POST)
	public String loginpost( 
			User user, 
			Model model, 
			HttpServletRequest req, 
			@RequestParam(defaultValue = "off") String remember,
			HttpServletResponse res) {
		try {
			String query = "select * from user where umail = ? and upassword = ?";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, user.getUmail());
			pre.setString(2, Util.MD5(user.getUpassword()));
			ResultSet rs = pre.executeQuery();
			if (rs.next()) {
				// user log in
				// session create
				user.setUid(rs.getInt("uid"));
				user.setUname(rs.getString("uname"));
				req.getSession().setAttribute("uid", user);
				uid=user.getUid();

				// remember check ?
				if(remember.equals("on")) {
					Cookie cookie = new Cookie("user_cookie", ""+rs.getInt("uid"));
					cookie.setMaxAge(60*60*24);
					res.addCookie(cookie);
				}
				
				
				return "redirect:/";
			} else {
				model.addAttribute("error", "Username or password incorrect");
			}
		} catch (Exception e) {
			System.err.println("login error : " + e);
			model.addAttribute("error", "System error has occurred!");
		}
		return "login";
	}
	
	
	// exit
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit(HttpServletRequest req, HttpServletResponse res) {
		
		Cookie cookie = new Cookie("user_cookie", "");
		cookie.setMaxAge(0);
		res.addCookie(cookie);
		
		// all sessions remove
		req.getSession().invalidate();
		// single session remove
		req.getSession().removeAttribute("uid");
		return "redirect:/";
	}
	
	

}
