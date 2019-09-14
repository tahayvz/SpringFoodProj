package com.works.admin;

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

import model.Admin;
import util.DB;
import util.Util;

@Controller
@RequestMapping("/admin")
public class LoginController {
	AdminPro adminPro = new AdminPro();
	DB db = new DB();
	
	// @RequestMapping("/admin") -> all methods under this request has to get /admin

	// login page create
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String login() {
		return "admin/login";
	}

	// admin login fnc
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String adminLogin( 
			Admin adm, 
			Model model, 
			HttpServletRequest req, 
			@RequestParam(defaultValue = "off") String remember,
			HttpServletResponse res) {
		try {
			String query = "select * from admin where amail = ? and apass = ?";
			PreparedStatement pre = db.connect(query);
			pre.setString(1, adm.getAmail());
			pre.setString(2, Util.MD5(adm.getApass()));
			ResultSet rs = pre.executeQuery();

			if (rs.next()) {
				adm.setAid(rs.getInt("aid"));
				adm.setAname(rs.getString("aname"));
				adminPro.setAname(rs.getString("aname"));
				req.getSession().setAttribute("aid", adm);

				// remember check ?
				if(remember.equals("on")) {
					Cookie cookie = new Cookie("user_cookie", ""+rs.getInt("aid"));
					cookie.setMaxAge(60*60*24);
					res.addCookie(cookie);
				}
				
				
				return "redirect:/admin/dashboard";
			} else {
				model.addAttribute("error", "Username or password incorrect");
			}
		} catch (Exception e) {
			System.err.println("login error : " + e);
			model.addAttribute("error", "system error has occurred!");
		}
		return "admin/login";
	}
	MyAdminObject.getMyAdminObject().setMyObject(adminPro);
//	public String getA() {
//		return adminPro.getAname();
//	}
	// exit
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit(HttpServletRequest req, HttpServletResponse res) {
		
		Cookie cookie = new Cookie("user_cookie", "");
		cookie.setMaxAge(0);
		res.addCookie(cookie);
		
		// all sessions remove
		req.getSession().invalidate();
		// single session remove
		req.getSession().removeAttribute("aid");
		return "redirect:/admin/";
	}

}
