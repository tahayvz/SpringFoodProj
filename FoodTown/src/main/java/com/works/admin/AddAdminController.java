package com.works.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Admin;
import model.Procategory;
import model.Product;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class AddAdminController {

	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/addadmin", method = RequestMethod.GET)
	public String addadmin( HttpServletRequest req, Model model ) {
		model.addAttribute("ls", dataResult());

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
		tr.commit(); // işlem başarılı kayıt yap
		long end = System.currentTimeMillis();
		System.out.println("end : " + end );
		long bettwen =  end - start;
		System.out.println("bettwen : " + bettwen );
		//tr.rollback(); // işlem hatası yukarıdakileri geri al
		
		return Util.control(req, "redirect:/admin/dashboard");
	}
	
	
	public List<Admin> dataResult() {
		Session sesi = sf.openSession();
		List<Admin> ls = sesi.createQuery("from Admin").getResultList();
		return ls;
	}
	
}