package com.works.foodtown;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import util.HibernateUtil;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	SessionFactory sf = HibernateUtil.getSessionFactory(); // connection is established


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		//model data d�necek idsi olmal� product d�nder
			Session sesi = sf.openSession(); 
		
		List<Product> ls = sesi.createQuery("from Product").list();
		model.addAttribute("data", ls);
		
		
		return "home";
	}
	
}
