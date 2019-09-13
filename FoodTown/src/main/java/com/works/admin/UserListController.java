package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import model.Proorder;
import model.User;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class UserListController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/userlist", method = RequestMethod.GET)
	public String userlist(HttpServletRequest req, Model model) {
		Session sesi = sf.openSession();
		List<User> uls = sesi.createQuery("from User").getResultList();
		List<Proorder> ols = sesi.createQuery("from Proorder").getResultList();
		List<Product> pls = sesi.createQuery("from Product").getResultList();

		model.addAttribute("uls", uls);
		model.addAttribute("ols", ols);
		model.addAttribute("pls", pls);

		return Util.control(req, "userlist");
	}

	// delete user
	@RequestMapping(value = "/deleteUser/{uid}")
	public String deleteAdmin(@PathVariable int uid,HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		User user = sesi.load(User.class, uid);
		sesi.delete(user);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/userlist");
	}
	
}