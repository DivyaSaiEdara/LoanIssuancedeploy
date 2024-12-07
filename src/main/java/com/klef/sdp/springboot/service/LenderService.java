package com.klef.sdp.springboot.service;

import org.springframework.stereotype.Service;

import com.klef.sdp.springboot.model.Lender;

@Service
public interface LenderService {
	
	public String lenderRegistration(Lender lender);
	public Lender checkLenderLogin(String email,String Password);
	public String updateLender(Lender lender);
}
