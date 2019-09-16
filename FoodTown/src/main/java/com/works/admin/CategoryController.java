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
public class CategoryController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/categoryList", method = RequestMethod.GET)
	public String categoryList(Model model, HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		List<Procategory> cls = sesi.createQuery("from Procategory").list();
		model.addAttribute("ctgData", cls);
		model.addAttribute("ols", orderResult());
		model.addAttribute("uls", userResult());
		model.addAttribute("pls", productResult());
		
		return Util.control(req, "categoryList");
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
	
	@RequestMapping(value = "/categoryInsert", method = RequestMethod.POST)
	public String categoryInsert(HttpServletRequest req, Procategory category) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		
		int id =  (int) sesi.save(category);
		System.out.println("insert category id : " + id);
		tr.commit(); 
	
		//tr.rollback(); 
		
		return Util.control(req, "redirect:/admin/categoryList");
	}	

	@RequestMapping(value = "/deleteCategory/{ctid}")
	public String deleteCategory(@PathVariable int ctid,HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Procategory category = sesi.load(Procategory.class, ctid);
		sesi.delete(category);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/categoryList");
	}
	
	
	@RequestMapping(value = "/updateCategory/{ctid}")
	public String updateCategory(@PathVariable int ctid,HttpServletRequest req,Procategory category) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		
		category = sesi.load(Procategory.class, ctid);
		category.setCtid(ctid);
		sesi.update(category);
		
		tr.commit();
		return Util.control(req, "redirect:/admin/categoryList");
	}
}