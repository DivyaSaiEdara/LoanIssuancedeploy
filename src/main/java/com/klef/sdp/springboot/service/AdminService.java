package com.klef.sdp.springboot.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.sdp.springboot.model.Admin;
import com.klef.sdp.springboot.model.Borrower;
import com.klef.sdp.springboot.model.Lender;

@Service
public interface AdminService {
	public List<Borrower> viewAllBorrowers();
	public Admin checkAdminLogin(String uname,String pwd);
	public long borrowercount();
	public List<Lender> viewAllLenders();
	public long Lendercount();
	public String deleteBorrower(int id);
	public Borrower displayBorrowerByID(int id);
	public String deleteLender(int id);

	public Lender displayLenderByID(int id);
}
