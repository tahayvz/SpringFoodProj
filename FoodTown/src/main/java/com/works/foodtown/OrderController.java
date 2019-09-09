package com.works.foodtown;

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
import util.HibernateUtil;
import util.Util;
import model.Proorder;


/**
 * Handles requests for the application home page.
 */
@Controller
public class OrderController {
	SessionFactory sf=HibernateUtil.getSessionFactory();


	@RequestMapping(value = "/order/{productId}", method = RequestMethod.GET)
	public String order(@PathVariable int productId, Model model, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Product product = sesi.load(Product.class, productId);
		model.addAttribute("data", product);
		List<Procategory> cls = sesi.createQuery("from Procategory").list();
		model.addAttribute("ctgData", cls);
		return Util.controlUser(req, "order");
	}
	
	
	@RequestMapping(value = "/giveorder", method = RequestMethod.POST)
	public String giveorder(HttpServletRequest req, Proorder order) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		
		int id =  (int) sesi.save(order);
		System.out.println("insert id : " + id);
		tr.commit(); // işlem başarılı kayıt yap
		
		//tr.rollback(); // işlem hatası yukarıdakileri geri al
		
		return Util.controlUser(req, "redirect:/orderlist");
	}
	
}
