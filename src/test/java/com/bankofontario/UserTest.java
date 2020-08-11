package com.bankofontario;

import com.bankofontario.repository.UserRepository;
import com.bankofontario.service.UserService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class UserTest {

    // User object data
    private static String FIRST_NAME ="Puspa";

    private static String LAST_NAME ="Rani";

    private static String USER_TYPE ="Admin";

    private static String EMAIL ="rani@rani.com";
    private static String UPDATE_EMAIL ="rani123@rani.com";

    private static String PASSWORD ="rani123";

    private static boolean IS_SUPER_USER =true;


    //Address object data
    private static String SREET_NUMBER ="6";

    private static String SREET_NAME ="Legato Court";

    private static String CITY ="TORONTI";

    private static String PROVINCE ="ON";

    private static String COUNTRY ="CANADA";

    private static String POST_CODE ="M3B 1L7";


    // Account object data
    private static int ACCOUNT_NUMBER =45768456;

    private static double INITIAL_BALANCE =25000;

    private static double BALANCE =25000;

    private static double MINIMUM_BALANCE =5000;

    private static String ACCOUNT_TYPE ="saving";

    private static boolean VIRTUAL_CARD =true;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserService userService;

    @Test
    public void testUser(){

        User user = new User();

        //Building user object
        user.setCreateDate(new Date());
        user.setFirstName(FIRST_NAME);
        user.setLastName(LAST_NAME);
        user.setUserType(USER_TYPE);
        user.setEmail(EMAIL);
        user.setPassword(PASSWORD);
        user.setSuperUser(IS_SUPER_USER);

        Address address = new Address();

        //Building address object
        address.setStreetNumber(SREET_NUMBER);
        address.setStreetName(SREET_NAME);
        address.setCity(CITY);
        address.setProvince(PROVINCE);
        address.setCountry(COUNTRY);
        address.setPostalCode(POST_CODE);

        // setting address object on user object
        user.setAddress(address);

        Account account = new Account();

        //Building account object
        account.setCreateDate(new Date());
        account.setAccountNumber(ACCOUNT_NUMBER);
        account.setBalance(BALANCE);
        account.setMinimumBalance(MINIMUM_BALANCE);
        account.setInitialBalance(INITIAL_BALANCE);
        account.setAccountType(ACCOUNT_TYPE);
        account.setHasVirtualCreditCard(VIRTUAL_CARD);

        //setting account object on user object
        user.setAccount(account);


        System.out.println("**************************  User Unit Test Starting  **************************");


        System.out.println("**************************  Saving User Object  **************************");
        userRepository.save(user);

        System.out.println("**************************  Retrieving User Object  **************************");
        User dbuser = userService.getUserByUserName(EMAIL);
        System.out.println("**************************  Asseting User Object  **************************");
        Assert.assertEquals(dbuser.getFirstName(),FIRST_NAME);
        Assert.assertEquals(dbuser.getAddress().getStreetName(),SREET_NAME);
        Assert.assertEquals(dbuser.getAccount().getAccountNumber(),ACCOUNT_NUMBER);

        System.out.println("**************************  Updating User Object  **************************");
        user.setEmail(UPDATE_EMAIL);
        userRepository.save(user);

        System.out.println("**************************  Retrieving User Object after updation  **************************");
        User updateDbuser = userService.getUserByUserName(UPDATE_EMAIL);
        System.out.println("**************************  Asseting User Object after updation  **************************");
        Assert.assertEquals(updateDbuser.getEmail(),UPDATE_EMAIL);

        System.out.println("**************************  Deleting User Object  **************************");
        userRepository.delete(updateDbuser);

        System.out.println("**************************  User Unit Test Completed Successfully  **************************");

    }
}
