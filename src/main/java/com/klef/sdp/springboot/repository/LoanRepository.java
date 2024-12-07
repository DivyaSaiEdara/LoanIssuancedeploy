package com.klef.sdp.springboot.repository;

import com.klef.sdp.springboot.model.Loan;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LoanRepository extends JpaRepository<Loan, Integer> {
    List<Loan> findByBorrowerId(int borrowerId);
}
