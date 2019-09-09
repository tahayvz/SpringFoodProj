package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Procategory;
import model.Product;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class ProductsController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String addproduct( HttpServletRequest req, Model model ) {
		model.addAttribute("ls", dataResult());
		
		Session session = sf.openSession();
		List<Procategory> cls = session.createQuery("from Procategory").list();
		model.addAttribute("ctgData", cls);
		
		return Util.control(req, "products");
	}
	
	

	
	public List<Product> dataResult() {
		Session sesi = sf.openSession();
		List<Product> ls = sesi.createQuery("from Product").getResultList();
		return ls;
	}
	
	
	
	
}