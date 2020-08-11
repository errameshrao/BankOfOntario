package com.bankofontario;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "USER_ACCOUNT")
public class Account implements Serializable, Cloneable {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "uuid")
    @Column(name = "ACCOUNT_ID")
    private String id;

    @NotNull
    @Column(name = "CREATE_DATE")
    private Date createDate;

    @Version
    @Column(name = "VERSION")
    private int version;

    @NotNull
    @Column(name="ACCOUNT_NUMBER")
    private int accountNumber;

    @NotNull
    @Column(name="BALANCE")
    private double balance;

    @NotNull
    @Column(name="MINIMUM_BALANCE")
    private double minimumBalance;

    @NotNull
    @Column(name="INITIAL_BALANCE")
    private double initialBalance;

    @NotNull
    @Column(name="ACCOUNT_TYPE")
    private String accountType;

    @NotNull
    @Column(name="HAS_CREDIT_CARD")
    private boolean hasVirtualCreditCard;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public double getMinimumBalance() {
        return minimumBalance;
    }

    public void setMinimumBalance(double minimumBalance) {
        this.minimumBalance = minimumBalance;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public boolean isHasVirtualCreditCard() {
        return hasVirtualCreditCard;
    }

    public void setHasVirtualCreditCard(boolean hasVirtualCreditCard) {
        this.hasVirtualCreditCard = hasVirtualCreditCard;
    }

    public double getInitialBalance() {
        return initialBalance;
    }

    public void setInitialBalance(double initialBalance) {
        this.initialBalance = initialBalance;
    }
}

