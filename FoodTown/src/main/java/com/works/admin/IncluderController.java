package com.works.admin;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Admin;
import model.Procategory;
import model.Proorder;
import util.HibernateUtil;
import util.Util;
import com.works.admin.AdminPro;
@Controller
@RequestMapping("/admin")
public class IncluderController {
	SessionFactory sf = HibernateUtil.getSessionFactory();
	    LoginController inc;

	@RequestMapping(value = "/css", method = RequestMethod.GET)
	public String dashBoard() {
		return "admin/inc/css";
	}

	@RequestMapping(value = "/js", method = RequestMethod.GET)
	public String js() {
		return "admin/inc/js";
	}

	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String menu(Model model) {
		model.addAttribute("link", Util.link);
		Session sesi = sf.openSession();
		List<Admin> als = sesi.createQuery("from Admin").getResultList();
		model.addAttribute("als", als);
		List<Procategory> cls = sesi.createQuery("from Procategory").getResultList();
		model.addAttribute("cls",cls);
		  inc = new LoginController();
	    
		 List<AdminPro> list = inc.getList();
			model.addAttribute("adminls",list);

		return "admin/inc/menu";
	}

	@RequestMapping(value = "/header", method = RequestMethod.GET)
	public String header(Model model) {
		Session sesi = sf.openSession();
		List<Proorder> ls 	= sesi.createQuery("from Proorder").getResultList();
		model.addAttribute("ls", ls);

		return "admin/inc/header";
	}

	@RequestMapping(value = "/smallbox", method = RequestMethod.GET)
	public String smallBox() {
		return "admin/inc/smallbox";
	}
}
