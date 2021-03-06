package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class AddProductController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/addproduct", method = RequestMethod.GET)
	public String addproduct( HttpServletRequest req, Model model ) {
		Session session = sf.openSession();
		List<Procategory> cls = session.createQuery("from Procategory").list();
		model.addAttribute("ctgData", cls);
		model.addAttribute("ols", dataResult());
		model.addAttribute("uls", userResult());
		model.addAttribute("pls", productResult());
		return Util.control(req, "addproduct");
	}
	
	
	@RequestMapping(value = "/addproductpost", method = RequestMethod.POST)
	public String addproductpost(HttpServletRequest req, Product product) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(product);
		if (id > 0) {
			System.out.println("added success");
		}
		tr.commit(); 
		
		//tr.rollback(); 
		
		return Util.control(req, "redirect:/admin/products");
	}
	
	public List<Proorder> dataResult() {
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