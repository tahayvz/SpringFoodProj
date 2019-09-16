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
import model.Product;
import model.Proorder;
import model.User;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class AddAdminController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/addadmin", method = RequestMethod.GET)
	public String addadmin( HttpServletRequest req, Model model ) {
		model.addAttribute("als", dataResult());
		Session sesi = sf.openSession();
		List<Proorder> ls = sesi.createQuery("from Proorder").getResultList();
		List<User> uls = sesi.createQuery("from User").getResultList();
		List<Product> pls = sesi.createQuery("from Product").getResultList();
		List<Proorder> ols = sesi.createQuery("from Proorder").getResultList();

		model.addAttribute("ls", ls);
		model.addAttribute("uls", uls);
		model.addAttribute("pls", pls);
		model.addAttribute("ols", ols);
		return Util.control(req, "addadmin");
	}
	
	
	@RequestMapping(value = "/adminInsert", method = RequestMethod.POST)
	public String adminInsert(HttpServletRequest req, Admin adm) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		adm.setApass(Util.MD5(adm.getApass()));
		long start = System.currentTimeMillis();
		System.out.println("start : " + start );
		int id =  (int) sesi.save(adm);
		System.out.println("insert id : " + id);
		tr.commit(); 
		long end = System.currentTimeMillis();
		System.out.println("end : " + end );
		long between =  end - start;
		System.out.println("between : " + between );
		//tr.rollback(); 
		
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	
	public List<Admin> dataResult() {
		Session sesi = sf.openSession();
		List<Admin> ls = sesi.createQuery("from Admin").getResultList();
		return ls;
	}
	
	

	// delete admin
	@RequestMapping(value = "/deleteAdmin/{aid}")
	public String deleteAdmin(@PathVariable int aid,HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Admin adm = sesi.load(Admin.class, aid);
		sesi.delete(adm);
		tr.commit();
		
		return Util.control(req, "redirect:/admin/addadmin");
	}
		
}