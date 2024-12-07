package com.klef.sdp.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.sdp.springboot.model.Borrower;
import com.klef.sdp.springboot.repository.BorrowerRepository;
@Service
public class BorrowerServiceImpl  implements BorrowerService{
	@Autowired
    private BorrowerRepository borrowerRepository;
	@Override
	public String borrowerRegistration(Borrower borrower) {

		borrowerRepository.save(borrower);
		return "Borrower Registered Successfully";
	}
	@Override
	public Borrower checkBorrowerLogin(String email, String Password) {
		return borrowerRepository.checkBorrowerLogin(email, Password);
	}
	@Override
	public String updateBorrower(Borrower borrower) {
		 Borrower b= borrowerRepository.findById(borrower.getId()).get();
		 b.setGender(borrower.getGender());
		 b.setName(borrower.getName());
		 b.setDateofbirth(borrower.getDateofbirth());
		 b.setLocation(borrower.getLocation());
		 b.setMonthlyExpenses(borrower.getMonthlyExpenses());
		 b.setAnnualIncome(borrower.getAnnualIncome());
		 b.setPassword(borrower.getPassword());
		 
		 borrowerRepository.save(b);
		 return "Profile Updated Successfully";
	}
	
    

}
