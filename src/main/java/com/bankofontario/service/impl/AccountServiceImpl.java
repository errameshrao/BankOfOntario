package com.bankofontario.service.impl;

import com.bankofontario.repository.AccountRepository;
import com.bankofontario.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountRepository accountRepository;
    @Override
    public List getUserAccountList() {
        return accountRepository.getUserAccountList();
    }
}
