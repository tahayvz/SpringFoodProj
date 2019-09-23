package com.works.admin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import restModel.Bilgiler;
import restModel.Product;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class ApiDetailProductController {
	
	int editID;
	SessionFactory sf = HibernateUtil.getSessionFactory();
	int x;

	@RequestMapping(value = "/detailApiProduct/{pId}", method = RequestMethod.GET)
	public String detailApiProduct(@PathVariable int pId, Model model, HttpServletRequest req) {
		
		// no transaction required in select operation
		SettingsController s=new SettingsController();
		List<Bilgiler> bilgilistesi = new ArrayList<Bilgiler>();

		

		for(int index=0 ; index<s.productResult().size();index++) {
		if(Integer.valueOf(s.productResult().get(index).getProductId()) ==pId) {
		x=index;
		System.out.println("outputx"+x);
		break;
		}
		}

		Bilgiler b=new Bilgiler();
		b.setProductName(s.productResult().get(x).getProductName());
		b.setPrice(s.productResult().get(x).getPrice());
		b.setProductId(s.productResult().get(x).getProductId());
		b.setBrief(s.productResult().get(x).getBrief());
		b.setCampaign(s.productResult().get(x).getCampaign());
		b.setDescription(s.productResult().get(x).getDescription());
		b.setSaleInformation(s.productResult().get(x).getSaleInformation());
		b.setCampaignTitle(s.productResult().get(x).getCampaignTitle());
		b.setCampaignDescription(s.productResult().get(x).getCampaignDescription());
		b.setCategories(s.productResult().get(x).getCategories());
		b.setImage(s.productResult().get(x).getImage());
		b.setImages( s.productResult().get(x).getImages());
		b.setLikes(s.productResult().get(x).getLikes());
		bilgilistesi.add(b);

		model.addAttribute("ls",bilgilistesi);	

		
		return Util.control(req, "apiProduct");
	}


		
}