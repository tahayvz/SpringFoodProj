package com.works.foodtown;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Proorder;
import util.HibernateUtil;
@Controller
public class UserIncluderController {
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/usercss", method = RequestMethod.GET)
	public String userCss() {
		return "inc/css";
	}


	@RequestMapping(value = "/userheader", method = RequestMethod.GET)
	public String userHeader(Model model) {
		Session sesi = sf.openSession();
		List<Proorder> ols = sesi.createQuery("from Proorder  where ouserid=?").setParameter(0, UserLoginController.uid).getResultList();
		model.addAttribute("ols", ols);

		return "inc/header";
	}

	

		
	
	
}
