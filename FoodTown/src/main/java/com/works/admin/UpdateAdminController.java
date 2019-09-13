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

import model.Admin;
import model.Procategory;
import model.Product;
import model.Proorder;
import model.Statu;
import model.User;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class UpdateAdminController {
	
	int editID;
	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/updateAdmin/{aId}", method = RequestMethod.GET)
	public String editAdmin(@PathVariable int aId, Model model, HttpServletRequest req) {
		
		// no transaction required in select operation
		editID = aId;
		Session sesi = sf.openSession();
		Admin admin= sesi.load(Admin.class, aId);
		model.addAttribute("admin", admin);
		Session session = sf.openSession();
		List<Procategory> cls = session.createQuery("from Procategory").list();
		model.addAttribute("ctgData", cls);
		List<Product> pls = session.createQuery("from Product").list();
		model.addAttribute("pls", pls);
		List<Statu> sls = session.createQuery("from Statu").list();
		model.addAttribute("sls", sls);
		List<Proorder> ols = session.createQuery("from Proorder").list();
		model.addAttribute("ols", ols);
		List<User> uls = session.createQuery("from User").list();
		model.addAttribute("uls", uls);
		return Util.control(req, "updateAdmin");
	}

	@RequestMapping(value = "/updateAdmin/adminEdit", method = RequestMethod.POST)
	public String editAdminPost(Admin admin, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		admin.setAid(editID);
		admin.setApass(Util.MD5(admin.getApass()));
		sesi.update(admin);
		tr.commit();

		return Util.control(req, "redirect:/admin/addadmin");
	}
	
	
		
}