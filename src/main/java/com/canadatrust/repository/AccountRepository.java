package com.canadatrust.repository;

import com.canadatrust.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountRepository extends JpaRepository<Account, Long> {

    @Query("select ac.accountNumber from Account ac")
    List getUserAccountList();
}
