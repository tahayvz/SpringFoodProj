package com.works.foodtown;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import util.HibernateUtil;
import util.Util;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DetailController {
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/detail/{productId}", method = RequestMethod.GET)
	public String detail(@PathVariable int productId, Model model, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Product product = sesi.load(Product.class, productId);
		model.addAttribute("data", product);

		return Util.controlUser(req, "detail");
	}

}
