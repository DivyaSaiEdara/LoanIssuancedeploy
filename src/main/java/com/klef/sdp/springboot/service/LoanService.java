package com.klef.sdp.springboot.service;

import com.klef.sdp.springboot.model.Loan;
import com.klef.sdp.springboot.repository.LoanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoanService {

    @Autowired
    private LoanRepository loanRepository;

    public void saveLoan(Loan loan) {
        loanRepository.save(loan);
    }

    public List<Loan> getLoansByBorrowerId(int borrowerId) {
        return loanRepository.findByBorrowerId(borrowerId);
    }
}
