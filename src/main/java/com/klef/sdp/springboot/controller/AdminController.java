package com.klef.sdp.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.sdp.springboot.service.AdminService;

import com.klef.sdp.springboot.model.Admin;
import com.klef.sdp.springboot.model.Borrower;
import com.klef.sdp.springboot.model.Lender;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		long borrowerCount = adminService.borrowercount();
        long lenderCount = adminService.Lendercount();
        mv.addObject("borrowerCount", borrowerCount);
        mv.addObject("lenderCount", lenderCount);

		return mv;
	}
	@PostMapping("checkadminlogin")
	public ModelAndView checkAdminLogin(HttpServletRequest request) 
	{
	    ModelAndView mv = new ModelAndView();
	    String auname = request.getParameter("auname");
	    String apwd = request.getParameter("apwd");

	    Admin admin = adminService.checkAdminLogin(auname, apwd);

	    if (admin != null) 
	    {
	    	HttpSession session = request.getSession();
	    	session.setAttribute("admin", admin);
	        mv.setViewName("adminhome");
	        mv.addObject("adminUsername", admin.getUsername()); 
	        long borrowerCount = adminService.borrowercount();
	        mv.addObject("borrowerCount", borrowerCount);
	        long lenderCount = adminService.Lendercount();
	        mv.addObject("lenderCount", lenderCount);
	    } 
	    else 
	    {
	        mv.setViewName("adminloginfail");
	        mv.addObject("message", "Login Failed");
	    }
	    return mv;
	}

	@GetMapping("viewallborrowers")
	public ModelAndView viewallborrowers()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("viewallborrowers");
		long borrowerCount = adminService.borrowercount();
	    mv.addObject("borrowerCount", borrowerCount);

  	   List<Borrower> borrowerList = adminService.viewAllBorrowers();
  	    mv.addObject("borrowerList", borrowerList); 

		return mv;
		
	}
	@GetMapping("viewalllenders")
	public ModelAndView viewAllLenders() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewalllenders"); 
	    long lenderCount = adminService.Lendercount();
	    mv.addObject("lenderCount", lenderCount);
	    List<Lender> lenderList = adminService.viewAllLenders();
	    mv.addObject("lenderList", lenderList); 

	    return mv;
	}
	@GetMapping("deleteborrower")
	public ModelAndView deleteborrower()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("deleteborrower");

  	   List<Borrower> borrowerList = adminService.viewAllBorrowers();
  	    mv.addObject("borrowerList", borrowerList); 

		return mv;
		
	}
	@GetMapping("delete")
	public String delete(@RequestParam int id)
	{
		adminService.deleteBorrower(id);
		return "redirect:/deleteborrower";
	}
	@GetMapping("viewborrowerbyid")
	public ModelAndView viewborrowerbyid() {
		ModelAndView mv = new ModelAndView();
		 List<Borrower> borrowerList = adminService.viewAllBorrowers();
	  	 mv.addObject("borrowerList", borrowerList); 
		 mv.setViewName("viewborrowerbyid");
		return mv;
	}
	@PostMapping("displayborrower")
	public ModelAndView displayborrower(HttpServletRequest request) {
		int id=Integer.parseInt(request.getParameter("id"));
		
		Borrower borrower=adminService.displayBorrowerByID(id);
		ModelAndView mv= new ModelAndView("displayborrower");
		mv.addObject("b",borrower);
		return mv;
	}
	@GetMapping("deletelender")
	public ModelAndView deletelender()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("deletelender");

  	   List<Lender> lenderList = adminService.viewAllLenders();
  	    mv.addObject("lenderList", lenderList); 

		return mv;
		
	}
	@GetMapping("delete1")
	public String delete1(@RequestParam int id)
	{
		adminService.deleteLender(id);
		return "redirect:/deletelender";
	}
	@GetMapping("viewlenderbyid")
	public ModelAndView viewlenderbyid() {
		ModelAndView mv = new ModelAndView();
		 List<Lender> lenderList = adminService.viewAllLenders();
	  	 mv.addObject("lenderList", lenderList); 
		 mv.setViewName("viewlenderbyid");
		return mv;
	}
	@PostMapping("displaylender")
	public ModelAndView displayblender(HttpServletRequest request) {
		int id=Integer.parseInt(request.getParameter("id"));
		
		Lender lender=adminService.displayLenderByID(id);
		ModelAndView mv= new ModelAndView("displaylender");
		mv.addObject("l",lender);
		return mv;
	}

}
