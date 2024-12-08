package com.klef.sdp.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.sdp.springboot.model.Lender;
import com.klef.sdp.springboot.model.Loans;
import com.klef.sdp.springboot.repository.LenderRepository;
import com.klef.sdp.springboot.repository.LoanRepository;

@Service
public class LenderServiceImpl implements LenderService{
   
	
	@Autowired
	private LenderRepository lenderRepository;
	@Autowired
	private LoanRepository loanRepository;
	@Override
	public String lenderRegistration(Lender lender) {
		lenderRepository.save(lender);
		return "Lender Registered Successfully";
	}
	@Override
	public Lender checkLenderLogin(String email, String Password) {
		return lenderRepository.checkLenderLogin(email, Password);
	}
	@Override
	public String updateLender(Lender lender) {
		Lender l= lenderRepository.findById(lender.getId()).get();
		 l.setGender(lender.getGender());
		 l.setName(lender.getName());
		 l.setDateOfBirth(lender.getDateOfBirth());
		 l.setLocation(lender.getLocation());
		 l.setDefaultInterestRate(lender.getDefaultInterestRate());
		 l.setPassword(lender.getPassword());
		 
		 lenderRepository.save(l);
		 return "Profile Updated Successfully";
	}
	@Override
	public List<Loans> getAllLoanApplications() {
		return loanRepository.findAll();
	}
	@Override
	public void saveLender(Lender lender) {
		// TODO Auto-generated method stub
		
	}

	
}
