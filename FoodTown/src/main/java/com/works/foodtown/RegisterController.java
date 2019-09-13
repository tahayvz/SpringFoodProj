package com.works.foodtown;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.User;
import util.HibernateUtil;
import util.Util;


@Controller
public class RegisterController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
	
		return "register";
	}
	
	@RequestMapping(value = "/userInsert", method = RequestMethod.POST)
	public String userInsert(HttpServletRequest req, User user) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		user.setUpassword(Util.MD5(user.getUpassword()));
		int id =  (int) sesi.save(user);
		System.out.println("insert id : " + id);
		tr.commit(); // registration successful
		
		//tr.rollback();
		
		return Util.controlUser(req, "redirect:/");
	}
}
