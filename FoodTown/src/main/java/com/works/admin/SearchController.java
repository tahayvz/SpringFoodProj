package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Procategory;
import model.Product;
import model.Proorder;
import model.Statu;
import model.User;
import util.HibernateUtil;
import util.Util;


@Controller
@RequestMapping("/admin")
public class SearchController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model, @RequestParam String q,HttpServletRequest req) {
		Session session = sf.openSession();
		List<Proorder> ls = session.createQuery("from Proorder WHERE otitle like ? order by oid desc")
			.setParameter(0, "%"+q+"%")
			.list();
		
		List<Procategory> cls = session.createQuery("from Procategory").list();
		List<Statu> sls = session.createQuery("from Statu").list();
		model.addAttribute("data", ls);
		model.addAttribute("ctgData", cls);
		model.addAttribute("uls", userResult());
		model.addAttribute("pls", productResult());
		model.addAttribute("sls", sls);
		return Util.control(req, "search");
	}	

	public List<Proorder> dataResult() {
		Session sesi = sf.openSession();
		List<Proorder> ls = sesi.createQuery("from Proorder").getResultList();
		return ls;
	}
		public List<User> userResult() {
		Session sesi = sf.openSession();
		List<User> uls = sesi.createQuery("from User").getResultList();
		return uls;
	}
		public List<Product> productResult() {
		Session sesi = sf.openSession();
		List<Product> pls = sesi.createQuery("from Product").getResultList();
		return pls;
	}

}