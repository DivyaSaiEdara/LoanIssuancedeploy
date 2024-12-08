package com.klef.sdp.springboot.service;

import org.springframework.stereotype.Service;
import java.util.*;
import com.klef.sdp.springboot.model.Lender;
import com.klef.sdp.springboot.model.Loans;

@Service
public interface LenderService {
	
	public String lenderRegistration(Lender lender);
	public Lender checkLenderLogin(String email,String Password);
	public String updateLender(Lender lender);
	public List<Loans> getAllLoanApplications();
	void saveLender(Lender lender);
}
