package com.klef.sdp.springboot.repository;

import com.klef.sdp.springboot.model.Loans;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LoanRepository extends JpaRepository<Loans, Integer> {
    List<Loans> findByBorrowerId(int borrowerId);
    List<Loans> findAll(); 
}
