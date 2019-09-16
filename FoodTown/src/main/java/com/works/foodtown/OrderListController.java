package com.works.foodtown;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.works.admin.LoginController;

import model.Admin;
import model.Procategory;
import model.Proorder;
import model.Statu;
import util.HibernateUtil;
import util.Util;


/**
 * Handles requests for the application home page.
 */
@Controller
public class OrderListController {
	SessionFactory sf=HibernateUtil.getSessionFactory();


	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public String orderList(Model model, HttpServletRequest req) {

		Session sesi = sf.openSession();
		List<Proorder> ls = sesi.createQuery("from Proorder  where ouserid=?").setParameter(0, UserLoginController.uid).getResultList();
		model.addAttribute("orderlist", ls);
		List<Procategory> cls = sesi.createQuery("from Procategory").list();
		model.addAttribute("ctgData", cls);
		List<Statu> sls = sesi.createQuery("from Statu").list();
		model.addAttribute("sls", sls);
//		Proorder order= (Proorder) sesi.createQuery("from Proorder  where ouserid= ?").setParameter(0, UserLoginController.uid).list()
//				.get(0);
//		model.addAttribute("orderuserls", order);
		return Util.controlUser(req, "orderlist");
	}
	
	

	
}
