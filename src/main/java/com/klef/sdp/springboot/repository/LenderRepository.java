package com.klef.sdp.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.sdp.springboot.model.Lender;
@Repository
public interface LenderRepository  extends JpaRepository<Lender, Integer>{
	@Query("select l from Lender l  where l.email=?1 and l.password=?2")
	public Lender checkLenderLogin(String email,String Password);
	
}
