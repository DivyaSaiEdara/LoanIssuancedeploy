package com.klef.sdp.springboot.service;

import com.klef.sdp.springboot.model.Loans;
import com.klef.sdp.springboot.repository.LoanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoanService {

    @Autowired
    private LoanRepository loanRepository;

    public void saveLoan(Loans loan) {
        loanRepository.save(loan);
    }

    public List<Loans> getLoansByBorrowerId(int borrowerId) {
        return loanRepository.findByBorrowerId(borrowerId);
    }
    public List<Loans> getAllLoanApplications() {
        return loanRepository.findAll();
    }

}
