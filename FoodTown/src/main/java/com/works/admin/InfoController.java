package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
public class InfoController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/infoOrder/{userid}", method = RequestMethod.GET)
	public String infoOrder(@PathVariable int userid, HttpServletRequest req, Model model ) {
		
		Session sesi = sf.openSession();
		List<User> ouserls = sesi.createQuery("from User where uid=?").setParameter(0, userid).getResultList();
		model.addAttribute("ouserls", ouserls);
		model.addAttribute("ols", orderResult());
		model.addAttribute("uls", userResult());
		model.addAttribute("pls", productResult());
		
		return Util.control(req, "infoOrder");
	}	
	
	public List<Proorder> orderResult() {
		Session sesi = sf.openSession();
		List<Proorder> ls = sesi.createQuery("from Proorder").getResultList();
		return ls;
	}
		public List<User> userResult() {
		Session sesi = sf.openSession();
		List<User> uls = sesi.createQuery("from User").getResultList();
		return uls;
	}
		public List<Product> productResult() {
		Session sesi = sf.openSession();
		List<Product> pls = sesi.createQuery("from Product").getResultList();
		return pls;
	}
}