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
import util.HibernateUtil;
import util.Util;


@Controller
public class DetailController {
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/detail/{productId}", method = RequestMethod.GET)
	public String detail(@PathVariable int productId, Model model, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Product product = sesi.load(Product.class, productId);
		List<Procategory> cls = sesi.createQuery("from Procategory").list();
		List<Product> pls = sesi.createQuery("from Product").list();
		model.addAttribute("ctgData", cls);
		model.addAttribute("data", product);
		model.addAttribute("pls", pls);

		return 	"detail";
	}
	
	@RequestMapping(value = "/addtocart", method = RequestMethod.POST)
	public String addToCart(HttpServletRequest req, Proorder order) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		order.setOuserid(UserLoginController.uid);
		int id =  (int) sesi.save(order);
		System.out.println("insert id : " + id);
		tr.commit(); 
		
		//tr.rollback(); 
		
		return Util.controlUser(req, "redirect:/orderlist");
	}

}
