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

import model.Procategory;
import model.Product;
import model.Proorder;
import model.User;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class UpdateCategoryController {
	
	int editID;
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/updateCategory/{ctId}", method = RequestMethod.GET)
	public String editAdmin(@PathVariable int ctId, Model model, HttpServletRequest req) {
		
		// no transaction required in select operation
		editID = ctId;
		Session sesi = sf.openSession();
		Procategory category= sesi.load(Procategory.class, ctId);
		model.addAttribute("ctgData", category);
		List<User> uls = sesi.createQuery("from User").list();
		model.addAttribute("uls", uls);
		List<Proorder> ols = sesi.createQuery("from Proorder").list();
		model.addAttribute("ols", ols);
		List<Product> pls = sesi.createQuery("from Product").list();
		model.addAttribute("ls", pls);
		return Util.control(req, "updateCategory");
	}

	@RequestMapping(value = "/updateCategory/categoryEdit", method = RequestMethod.POST)
	public String editCategoryPost(Procategory category, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		category.setCtid(editID);
		sesi.update(category);
		tr.commit();

		return Util.control(req, "redirect:/admin/categoryList");
	}
	
	
		
}