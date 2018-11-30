package com.canadatrust;

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
    private double accountNumber;

    @NotNull
    @Column(name="BALANCE")
    private double balance;

    @NotNull
    @Column(name="MINIMUM_NUMBER")
    private double minimumBalance;

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

    public double getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(double accountNumber) {
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
}

