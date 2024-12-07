package com.klef.sdp.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.sdp.springboot.model.Lender;
import com.klef.sdp.springboot.repository.LenderRepository;

@Service
public class LenderServiceImpl implements LenderService{
   
	
	@Autowired
	private LenderRepository lenderRepository;
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

	
}
