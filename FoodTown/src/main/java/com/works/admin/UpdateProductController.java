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
import model.Statu;
import model.User;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class UpdateProductController {
	
	int editID;
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/updateProduct/{pId}", method = RequestMethod.GET)
	public String updateProduct(@PathVariable int pId, Model model, HttpServletRequest req) {
		
		// no transaction required in select operation
		editID = pId;
		Session sesi = sf.openSession();
		Product product = sesi.load(Product.class, pId);
		model.addAttribute("product", product);
		Session session = sf.openSession();
		List<Procategory> cls = session.createQuery("from Procategory").list();
		model.addAttribute("ctgData", cls);
		List<Product> pls = session.createQuery("from Product").list();
		model.addAttribute("pls", pls);
		List<Statu> sls = session.createQuery("from Statu").list();
		model.addAttribute("sls", sls);
		List<User> uls = session.createQuery("from User").list();
		model.addAttribute("uls", uls);
		List<Proorder> ols = session.createQuery("from Proorder").list();
		model.addAttribute("ols", ols);
		return Util.control(req, "updateproduct");
	}

	@RequestMapping(value = "/updateProduct/productEdit", method = RequestMethod.POST)
	public String updateProductPost(Product product, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		product.setPid(editID);
		sesi.update(product);
		tr.commit();

		return Util.control(req, "redirect:/admin/products");
	}
	
	

	
		
}