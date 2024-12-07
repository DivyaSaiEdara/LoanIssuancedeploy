package com.klef.sdp.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.sdp.springboot.model.Admin;
import com.klef.sdp.springboot.model.Borrower;
import com.klef.sdp.springboot.model.Lender;
import com.klef.sdp.springboot.repository.AdminRepository;
import com.klef.sdp.springboot.repository.BorrowerRepository;
import com.klef.sdp.springboot.repository.LenderRepository;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
   private BorrowerRepository borrowerRepository;
	@Autowired
	private LenderRepository lenderRepository;
	@Override
	public List<Borrower> viewAllBorrowers() {
		
		return borrowerRepository.findAll();
	}
	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
	}
	@Override
	public long borrowercount() {
		return borrowerRepository.count();
	}
	@Override
	public List<Lender> viewAllLenders() { 
		return lenderRepository.findAll();
	}
	@Override
	public long Lendercount() {
		return lenderRepository.count();
	}
	@Override
	public String deleteBorrower(int id) {
		borrowerRepository.deleteById(id);
		return "Borrower Deleted Successfully";
		
	}
	@Override
	public Borrower displayBorrowerByID(int id) {
		return borrowerRepository.findById(id).get();
	}
	@Override
	public String deleteLender(int id) {
		lenderRepository.deleteById(id);
		return "Lender Deleted Successfully";
	}
	@Override
	public Lender displayLenderByID(int id) {
		return lenderRepository.findById(id).get();
	}


}
