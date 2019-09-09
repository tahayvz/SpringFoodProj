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
		return Util.control(req, "addproduct");
	}
	
	
	@RequestMapping(value = "/addproductpost", method = RequestMethod.POST)
	public String addproductpost(HttpServletRequest req, Product product) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
	
		int id =  (int) sesi.save(product);
		System.out.println("insert id : " + id);
		tr.commit(); // işlem başarılı kayıt yap
		
		//tr.rollback(); // işlem hatası yukarıdakileri geri al
		
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	
	
	
}