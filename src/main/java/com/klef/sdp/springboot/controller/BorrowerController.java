package com.klef.sdp.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.sdp.springboot.model.Borrower;
import com.klef.sdp.springboot.model.Loans;
import com.klef.sdp.springboot.service.BorrowerService;
import com.klef.sdp.springboot.service.LoanService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class BorrowerController {
	
	@Autowired
	private BorrowerService borrowerService;
	
	
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("borrowerreg")
	public ModelAndView borrowerreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("borrowerreg");
		return mv;
	}
	@GetMapping("borrowerlogin")
	public ModelAndView borrowerlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("borrowerlogin");
		return mv;
	}
	@GetMapping("borrowerlogout")
	public String borrowerLogout(HttpServletRequest request) {
	    HttpSession session = request.getSession(false); // Retrieve the session if it exists
	    if (session != null) {
	        session.invalidate(); // Invalidate the session to clear data
	    }
	    return "redirect:/borrowerlogin"; // Redirect to the borrower login page
	}
	
	
	@GetMapping("borrowerprofile")
	public ModelAndView borrowerprofile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("borrowerprofile");
		return mv;
	}
	@GetMapping("borrowerhome")
	public ModelAndView borrowerhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("borrowerhome");
		return mv;
	}
	
	@GetMapping("updateborrowerprofile")
	public ModelAndView updateborrowerprofile() {
		ModelAndView mv = new ModelAndView("updateborrowerprofile");
		
		return mv;
	}
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request) 
	{
		ModelAndView mv = new ModelAndView();
		
		int id=Integer.parseInt(request.getParameter("bid"));
		
		String name = request.getParameter("bname");
	    String gender = request.getParameter("bgender");
	    String dob = request.getParameter("bdob");
	    String password = request.getParameter("bpwd");
	    String location = request.getParameter("blocation");
	    String contact = request.getParameter("bcontact");
	    String annualIncome = request.getParameter("bincome");
	    String monthlyExpenses= request.getParameter("bexpenses");

	    Borrower borrower = new Borrower();
	    borrower.setId(id);
	    borrower.setName(name);
	    borrower.setGender(gender);
	    borrower.setDateofbirth(dob);
	    borrower.setPassword(password);
	    borrower.setLocation(location);
	    borrower.setContact(contact);
        borrower.setAnnualIncome(annualIncome);
        borrower.setMonthlyExpenses(monthlyExpenses);
        
        borrowerService.updateBorrower(borrower);
        
        
        mv.setViewName("borrowerlogin");
        
		return mv;
	}
	
	
	
	@PostMapping("insertborrower")
	public ModelAndView insertborrower(HttpServletRequest request) {
	    String name = request.getParameter("bname");
	    String gender = request.getParameter("bgender");
	    String dob = request.getParameter("bdob");
	    String email = request.getParameter("bemail");
	    String password = request.getParameter("bpwd");
	    String location = request.getParameter("blocation");
	    String contact = request.getParameter("bcontact");
	    String annualIncome = request.getParameter("bincome");
	    String monthlyExpenses= request.getParameter("bexpenses");

	    Borrower borrower = new Borrower();
	    borrower.setName(name);
	    borrower.setGender(gender);
	    borrower.setDateofbirth(dob);
	    borrower.setEmail(email);
	    borrower.setPassword(password);
	    borrower.setLocation(location);
	    borrower.setContact(contact);
        borrower.setAnnualIncome(annualIncome);
        borrower.setMonthlyExpenses(monthlyExpenses);
        
	    String message = borrowerService.borrowerRegistration(borrower);

	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("regsuccess");
	    mv.addObject("message", message);
	    return mv;
	}
	@PostMapping("checkborrowerlogin")
	public ModelAndView checkborrowerlogin(HttpServletRequest request) 
	{
		 ModelAndView mv= new ModelAndView();
         String bemail = request.getParameter("bemail");
         String bpwd = request.getParameter("bpwd");
         
          Borrower borrower= borrowerService.checkBorrowerLogin(bemail,bpwd);
          
          if(borrower!=null)
          {
        	  HttpSession session = request.getSession();
        	  
        	  session.setAttribute("borrower", borrower);
        	  session.setMaxInactiveInterval(900);
        	  mv.setViewName("borrowerhome");
          }
          else 
          {
        	  mv.setViewName("borrowerlogin");
        	  mv.addObject("message","Login Failed");
          }
          return mv;
	}
	@Autowired
    private LoanService loanService;
	@GetMapping("applyloan")
	public String showLoanForm(HttpSession session, Model model) {
	    Borrower borrower = (Borrower) session.getAttribute("borrower");
	    if (borrower == null) {
	        model.addAttribute("error", "Please log in to apply for a loan.");
	        return "error";
	    }
	    model.addAttribute("borrowerId", borrower.getId());
	    return "applyloan";
	}
	@PostMapping("applyloan")
	public String applyLoan(@RequestParam int borrowerId,
	                        @RequestParam double loanAmount,
	                        @RequestParam String loanPurpose,
	                        @RequestParam String applicationDate,
	                        HttpSession session,
	                        Model model) {
	    Borrower borrower = (Borrower) session.getAttribute("borrower");
	    System.out.println("Borrower: " + borrower);

	    Loans loan = new Loans();
	    loan.setBorrowerId(borrowerId);
	    loan.setLoanAmount(loanAmount);
	    loan.setLoanPurpose(loanPurpose);
	    loan.setApplicationDate(applicationDate);
	    System.out.println("Loan: " + loan);

	    loanService.saveLoan(loan);

	    List<Loans> borrowerLoans = loanService.getLoansByBorrowerId(borrowerId);
	    System.out.println("Retrieved Loans: " + borrowerLoans);
	    model.addAttribute("loans", borrowerLoans);

	    return "borrowerloans";
	}

	@GetMapping("borrowerloans")
	public String viewLoans(Model model, HttpSession session) {
	    Borrower borrower = (Borrower) session.getAttribute("borrower");
	    
	    if (borrower == null) {
	        return "redirect:/borrowerlogin"; 
	    }
	    
	    // Fetch loans for the logged-in borrower
	    List<Loans> borrowerLoans = loanService.getLoansByBorrowerId(borrower.getId());
	    model.addAttribute("loans", borrowerLoans);
	    
	    // Return loans page
	    return "borrowerloans";
	}


}

    

