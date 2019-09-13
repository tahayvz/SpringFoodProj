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
public class DashboardController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashboard( HttpServletRequest req, Model model ) {
		model.addAttribute("ls", dataResult());
		Session session = sf.openSession();
		List<Procategory> cls = session.createQuery("from Procategory").list();
		List<Statu> sls = session.createQuery("from Statu").list();
		model.addAttribute("ctgData", cls);
		model.addAttribute("uls", userResult());
		model.addAttribute("pls", productResult());
		model.addAttribute("sls", sls);
		return Util.control(req, "dashboard");
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
	
	@RequestMapping(value = "/orderontheroad/{oid}")
	public String OrderOnTheRoad(@PathVariable int oid,HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Proorder order= sesi.load(Proorder.class, oid);
		order.setOstatu(1);
		sesi.update(order);
		tr.commit();
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	@RequestMapping(value = "/orderwasdelivered/{oid}")
	public String OrderWasDelivered(@PathVariable int oid,HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Proorder order= sesi.load(Proorder.class, oid);
		order.setOstatu(2);
		sesi.update(order);
		tr.commit();
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	@RequestMapping(value = "/orderpreparing/{oid}")
	public String OrderPreparing(@PathVariable int oid,HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Proorder order= sesi.load(Proorder.class, oid);
		order.setOstatu(3);
		sesi.update(order);
		tr.commit();
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	
}