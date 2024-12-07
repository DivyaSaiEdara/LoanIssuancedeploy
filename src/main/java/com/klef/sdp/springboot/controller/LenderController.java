package com.klef.sdp.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.sdp.springboot.model.Lender;
import com.klef.sdp.springboot.service.LenderService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LenderController {
	@Autowired
	private LenderService lenderService;
	@GetMapping("lenderhome")
	public ModelAndView lenderhome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderhome");
		return mv;
	}
	@GetMapping("lenderlogin")
	public ModelAndView lenderlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderlogin");
		return mv;
	}
	@GetMapping("lenderreg")
	public ModelAndView lenderreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderreg");
		return mv;
	}
	@GetMapping("lenderprofile")
	public ModelAndView lenderprofile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderprofile");
		return mv;
	}
	@GetMapping("lenderlogout")
	public ModelAndView lenderlogout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lenderlogin");
		return mv;
	}
	@PostMapping("insertlender")
	public ModelAndView insertlender(HttpServletRequest request) {
	    String name = request.getParameter("lname");
	    String gender = request.getParameter("lgender");
	    String dob = request.getParameter("ldob");
	    String email = request.getParameter("lemail");
	    String password = request.getParameter("lpwd");
	    String location = request.getParameter("llocation");
	    String contact = request.getParameter("lcontact");
	    String interestRateParam = request.getParameter("linterest_rate");

	    // Directly parse interest rate from the request
	    double interestRate = Double.parseDouble(interestRateParam); 

	    Lender lender = new Lender();
	    lender.setName(name);
	    lender.setGender(gender);
	    lender.setDateOfBirth(dob);
	    lender.setEmail(email);
	    lender.setPassword(password);
	    lender.setLocation(location);
	    lender.setContact(contact);
	    lender.setDefaultInterestRate(interestRate); // Set the correct interest rate attribute

	    // Register the lender and get a success message
	    String message = lenderService.lenderRegistration(lender);

	    // Return a success page with the message
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("regsuccessl");
	    mv.addObject("message", message);
	    return mv;
	}
	@GetMapping("updatelenderprofile")
	public ModelAndView updatelenderprofile() {
		ModelAndView mv = new ModelAndView("updatelenderprofile");
		
		return mv;
	}

	@PostMapping("updatel")
	public ModelAndView updatel(HttpServletRequest request) 
	{
		ModelAndView mv = new ModelAndView();
		
		int id=Integer.parseInt(request.getParameter("lid"));
		String name = request.getParameter("lname");
	    String gender = request.getParameter("lgender");
	    String dob = request.getParameter("ldob");
	    String password = request.getParameter("lpwd");
	    String location = request.getParameter("llocation");
	    String contact = request.getParameter("lcontact");
	    String interestRateParam = request.getParameter("linterest_rate");

	    // Directly parse interest rate from the request
	    double interestRate = Double.parseDouble(interestRateParam); 

	    Lender lender = new Lender();
	    lender.setId(id);
	    lender.setName(name);
	    lender.setGender(gender);
	    lender.setDateOfBirth(dob);
	    lender.setPassword(password);
	    lender.setLocation(location);
	    lender.setContact(contact);
	    lender.setDefaultInterestRate(interestRate);
	    lenderService.updateLender(lender);
        
        mv.setViewName("lenderlogin");
        
		return mv;
	}


	 @PostMapping("checklenderlogin")
	    public ModelAndView checkLenderLogin(HttpServletRequest request) {
	        // Retrieve email and password from request
	        String lemail = request.getParameter("lemail");
	        String lpwd = request.getParameter("lpwd");

	        // Call the service to check login credentials
	        Lender lender = lenderService.checkLenderLogin(lemail, lpwd);

	        ModelAndView mv = new ModelAndView();

	        if (lender != null) {
	            // Store the lender in the session
	            HttpSession session = request.getSession();
	            session.setAttribute("lender", lender);
	            // Redirect to the lender home page after successful login
	            mv.setViewName("lenderhome");
	        } else {
	            // If login failed, return to the login page with a failure message
	            mv.setViewName("lenderlogin");
	            mv.addObject("message", "Login Failed");
	        }

	        return mv;
	    }
	

}
