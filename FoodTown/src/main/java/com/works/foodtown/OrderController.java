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
import model.Proorder;
import model.Statu;
import util.HibernateUtil;
import util.Util;


@Controller
public class OrderController {
	SessionFactory sf=HibernateUtil.getSessionFactory();


	@RequestMapping(value = "/order/{productId}", method = RequestMethod.GET)
	public String order(@PathVariable int productId, Model model, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Product product = sesi.load(Product.class, productId);
		model.addAttribute("data", product);
		List<Procategory> cls = sesi.createQuery("from Procategory").list();
		List<Statu> sls = sesi.createQuery("from Statu").list();

		model.addAttribute("ctgData", cls);
		model.addAttribute("sls", sls);

		return Util.controlUser(req, "order");
	}
	
	
	@RequestMapping(value = "/giveorder", method = RequestMethod.POST)
	public String giveorder(HttpServletRequest req, Proorder order) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		
		int id =  (int) sesi.save(order);
		System.out.println("insert id : " + id);
		tr.commit(); 
				
		return Util.controlUser(req, "redirect:/orderlist");
	}
	
}
