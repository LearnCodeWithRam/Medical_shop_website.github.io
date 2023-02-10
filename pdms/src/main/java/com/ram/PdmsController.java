package com.ram;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
@Controller
public class PdmsController {
	static int a=1;
	@Autowired
	PdmsDAO dao;

	@Autowired
	PdmsDAO1 dao1;
	@Autowired
	ProductDAO pdao; 

	@Autowired
	LoginService service;

	@Autowired
	OrderDAO orderdao; 
	
	
	
	@RequestMapping("Start")
	public ModelAndView loadLandingPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

	
	
	

	@RequestMapping("receivedorder")
	public ModelAndView orderreceived(Model m) {
		ModelAndView mv = new ModelAndView();
		List<String> lstring= new ArrayList<String>();
		
		 List<Order> list= service.Product();
		 
		 Iterator<Order> it = list.iterator();
		 while(it.hasNext())
		 {
		Order o = it.next();
			 String custid = o.getCi();
			 String productid =o.getDi();
		String	 pass1 = "pass";
			 Optional<Customer> custrecord = service.login(custid,pass1);
			 
			Optional<ProductSeller> prodrecord =  service.findproductbyid(productid);
			
			 String custname = custrecord.get().getFname();
			 String custadd = custrecord.get().getAddress();
			 String custphone = custrecord.get().getPhno();
			 String  productname = prodrecord.get().getPrname();
			 
		String s = ") "+custname+" with mobile number "+custphone+" has ordered "+productname+" at "+custadd;
		
		lstring.add(s);
			 
			 
		 }
		 
		
	m.addAttribute("l", lstring);
		mv.setViewName("OrderReceived");
		return mv;
	}

	
	
	@RequestMapping("Log")
	public ModelAndView loadLog() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Login");
		return mv;
	}

	@RequestMapping("Login")
	public ModelAndView loadLogin(Customer c) {
		ModelAndView mv = new ModelAndView();
		dao.save(c);

		mv.setViewName("Login");
		return mv;
	}

	@RequestMapping("RegisterCustomer")
	public ModelAndView loadRegisterCustomer() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("RegisterCustomer");

		return mv;
	}

	@RequestMapping("SellerRegister")
	public ModelAndView loadSellerRegister() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("SellerRegister");

		return mv;
	}

	

	@RequestMapping("AddProductSeller")
	public ModelAndView AddProductSeller() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("AddProductSeller");

		return mv;
	}

	
	

	@RequestMapping("Stock")
	public  ModelAndView checkStock(Model m) {
	
	 ModelAndView mv= new ModelAndView();	
		List<ProductSeller> list = service.findProductDetails();
		 mv.setViewName("Stock");
		 m.addAttribute("l",list);
		 return mv;
		 
		 
	 
			 
		  
	}


	@RequestMapping("order")
	public ModelAndView Order(Order o)  {
		ModelAndView mv = new ModelAndView();
		o.setPk(a);
		a++;
		
		 orderdao.save(o);
	String ppid=	o.getDi();
 
		 System.out.println("ppiod ===="+ppid);
		Optional<ProductSeller> ps = service.findproductbyid(ppid);
		 ///transfer that list;
		mv.addObject("pname",ps.get().getPrname());
		mv.addObject("pid",ps.get().getPrid());
		mv.addObject("price",ps.get().getPrice());
		mv.addObject("mfact",ps.get().getMfname());
		mv.addObject("exp",ps.get().getEdate());
		mv.addObject("mdate",ps.get().getMdate());
		
		mv.setViewName("placeorder");

		return mv;
	}


	@RequestMapping("Buy")
	public ModelAndView Buy(Model m)  {
		ModelAndView mv = new ModelAndView();
		 
		List<ProductSeller> list = service.findProductDetails();
		mv.setViewName("Buy");
		 m.addAttribute("l",list);
		 return mv;
		 
		 
	}

	
	
	

	@RequestMapping("AddProduct")
	public ModelAndView AddProduct(@ModelAttribute("ProductSeller") ProductSeller ps) {
		ModelAndView mv = new ModelAndView();
		
		pdao.save(ps);
		
		mv.setViewName("ValidateSeller");

		return mv;
	}

	
	
	@RequestMapping("ValidateSeller")
	public ModelAndView loadValidateSeller() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ValidateSeller");

		return mv;
	}

	


	@RequestMapping("Login1")
	public ModelAndView loadLogin1(Seller s) {
		ModelAndView mv = new ModelAndView();
		dao1.save(s);

		mv.setViewName("Login");
		return mv;
	}

	@RequestMapping("Validate")
	public ModelAndView loadvalidate( Seller c) {
		String type = c.getU();
		ModelAndView mv = new ModelAndView();
		if (type.equalsIgnoreCase("seller")) {
			int f = 1;

			Optional<Seller> seller = service.loginSeller(c.getUid(), c.getPass1());

			if (seller.get().getPass1().equalsIgnoreCase(c.getPass1())) {

				if (seller.get().getUid().equalsIgnoreCase(c.getUid())) {
					f = 2;
				} else {
					f = 1;
				}
			} else {
				f = 1;
			}

			if (f == 2) {
				mv.setViewName("ValidateSeller");
				mv.addObject("Id", seller.get().getUid());
				mv.addObject("Name", seller.get().getFname());
				mv.addObject("Address", seller.get().getAddress());
				mv.addObject("Mob", seller.get().getPhno());
				mv.addObject("Email", seller.get().getEmail());

			} else {
				mv.setViewName("Login");

			}

		}
		// customer
		else {
			int f = 1;

			Optional<Customer> cust = service.login(c.getUid(), c.getPass1());

			if (cust.get().getPass1().equalsIgnoreCase(c.getPass1())) {

				if (cust.get().getUid().equalsIgnoreCase(c.getUid())) {
					f = 2;
				} else {
					f = 1;
				}
			} else {
				f = 1;
			}

			if (f == 2) {
				mv.setViewName("Validate");
				mv.addObject("Id", cust.get().getUid());
				mv.addObject("Name", cust.get().getFname());
				mv.addObject("Address", cust.get().getAddress());
				mv.addObject("Mob", cust.get().getPhno());
				mv.addObject("Email", cust.get().getEmail());

			} else {
				mv.setViewName("Login");

			}

		}

		return mv;

	}

}
