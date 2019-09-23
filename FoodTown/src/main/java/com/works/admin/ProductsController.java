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
public class ProductsController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String addproduct(HttpServletRequest req, Model model) {
		model.addAttribute("pls", dataResult());
		model.addAttribute("ctgData", categoryResult());
		model.addAttribute("uls", userResult());
		model.addAttribute("sls", statuResult());
		model.addAttribute("ols", orderResult());

		return Util.control(req, "products");
	}

	public List<Statu> statuResult() {
		Session sesi = sf.openSession();
		List<Statu> sls = sesi.createQuery("from Statu").list();
		return sls;
	}

	public List<Procategory> categoryResult() {
		Session sesi = sf.openSession();
		List<Procategory> cls = sesi.createQuery("from Procategory").list();
		return cls;
	}

	public List<Product> dataResult() {
		Session sesi = sf.openSession();
		List<Product> ls = sesi.createQuery("from Product").getResultList();
		return ls;
	}

	public List<User> userResult() {
		Session sesi = sf.openSession();
		List<User> uls = sesi.createQuery("from User").getResultList();
		return uls;
	}
	
	public List<Proorder> orderResult() {
		Session sesi = sf.openSession();
		List<Proorder> ols = sesi.createQuery("from Proorder").getResultList();
		return ols;
	}

	// delete admin
	@RequestMapping(value = "/deleteProduct/{pid}")
	public String deleteAdmin(@PathVariable int pid,HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Product product= sesi.load(Product.class, pid);
		sesi.delete(product);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/products");
	}
	
	
	@RequestMapping(value = "/categoryproduct/{ctg}", method = RequestMethod.GET)
	public String categoryProduct(Model model, @PathVariable String ctg, HttpServletRequest req) {
		Session session = sf.openSession();
		Procategory cat = (Procategory) session.createQuery("from Procategory  where ctname = ?").setParameter(0, ctg)
				.list().get(0);

		List<Product> pls = session.createQuery("from Product where pcategory = ? ")
				.setParameter(0, cat.getCtid()).list();
		model.addAttribute("ls", pls);
		model.addAttribute("ctgData", categoryResult());
		model.addAttribute("uls", userResult()); 
		model.addAttribute("ols", orderResult()); 
		model.addAttribute("pls", dataResult());

		return Util.control(req, "categoryproducts");
	}

}