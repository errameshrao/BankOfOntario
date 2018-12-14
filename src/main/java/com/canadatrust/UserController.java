package com.canadatrust;

import com.canadatrust.User;
import com.canadatrust.repository.UserRepository;
import com.canadatrust.service.AccountService;
import com.canadatrust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

@Controller
public class UserController {


    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AccountService accountService;

    @Autowired
    private EmailController emailController;

    @RequestMapping(value = "/openaccount", method = RequestMethod.GET)
    public ModelAndView showForm(HttpSession httpSession, Model model) {
        User loggedInuser = (User) httpSession.getAttribute("loggedInUser");
        model.addAttribute("loggedInUser",loggedInuser);
        return new ModelAndView("register", "user", new User());
    }


    @RequestMapping(value = "/myProfilePage")
    public ModelAndView openUserProfile(HttpSession httpSession){

        User loggedInUser = (User)httpSession.getAttribute("loggedInUser");

        User dbUser =userService.getUserById(loggedInUser.getId());


        return new ModelAndView("userProfile","User",dbUser);
    }

    @RequestMapping(value = "/deleteUser",method = RequestMethod.POST)
    public ModelAndView deleteUser(@RequestParam("userId") String userId){

        User user = userService.getUserById(userId);
        userRepository.delete(user);
        List usersList = userRepository.findAll();
        return new ModelAndView("adminPage","userList",usersList);
    }

    @RequestMapping(value="/BackToAdmin", method=RequestMethod.GET)
    public ModelAndView adminListPage(){
        List usersList = userRepository.findAll();
        return new ModelAndView("adminPage","userList",usersList);
    }

    @RequestMapping(value="/BackToCustomer", method=RequestMethod.GET)
    public ModelAndView customerHomePage(HttpSession httpSession){
        User user = (User)httpSession.getAttribute("loggedInUser");
        return new ModelAndView("customerPage","User",user);
    }

    @RequestMapping(value="showAccountInfo",method = RequestMethod.POST)
    public ModelAndView showAccountInfo(@RequestParam("userId") String userId){

        User user = userService.getUserById(userId);
        Account account= user.getAccount();


        return new ModelAndView("accountInfo","account",account);
    }

    @RequestMapping(value="editUserInfo",method = RequestMethod.POST)
    public ModelAndView editUserInfo(@RequestParam("userId") String userId){
        User user = userService.getUserById(userId);

        return new ModelAndView("userInfo","User",user);
    }

    @RequestMapping(value = "/update")
    public ModelAndView updateProfile(HttpSession httpSession){

        User user = (User)httpSession.getAttribute("loggedInUser");

        return new ModelAndView("updateProfile","User",user);
    }


    @RequestMapping(value="/updateUserDetails",method = RequestMethod.POST)
    public ModelAndView updateUserDetails(@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
                                          @RequestParam("email") String email, @RequestParam("streetNumber") String streetNumber,
                                          @RequestParam("streetName") String streetName, @RequestParam("city") String city,
                                          @RequestParam("province") String province, @RequestParam("country") String country,
                                          @RequestParam("postalCode") String postalCode,HttpSession httpSession){


        User loggedInUser = (User)httpSession.getAttribute("loggedInUser");
        User user = userService.getUserById(loggedInUser.getId());
        Address address = user.getAddress();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        address.setStreetNumber(streetNumber);
        address.setStreetName(streetName);
        address.setCity(city);
        address.setProvince(province);
        address.setCountry(country);
        address.setPostalCode(postalCode);
        user.setAddress(address);

        userRepository.save(user);
        List usersList = userRepository.findAll();
        return new ModelAndView("adminPage","userList",usersList);
    }

    @ModelAttribute
    @RequestMapping(value="/registerUser", method = RequestMethod.POST)
    public ModelAndView registerUser(@Valid @ModelAttribute("user") User user,HttpSession httpSession){
        Random random = new Random();
        int newAccount = 0;
        user.getAccount().setCreateDate(new Date());

        newAccount = random.nextInt(900000000) + 100000000;

        List userAccountList = accountService.getUserAccountList();
        if(userAccountList!=null && userAccountList.size()!=0) {
            for(int i=0;i<=userAccountList.size()-1;i++) {
                if (userAccountList.contains(newAccount)) {
                    newAccount = random.nextInt(900000000) + 100000000;
                    continue;
                } else {
                    user.getAccount().setAccountNumber(newAccount);
                    break;
                }
            }
        }else{
            user.getAccount().setAccountNumber(newAccount);
        }

        user.getAccount().setAccountNumber(newAccount);
        user.setCreateDate(new Date());
        userRepository.save(user);

        String comments = "Hi "+user.getFirstName()+" your "+user.getUserType()+" account having a/c no "+user.getAccount().getAccountNumber()+"" +
                " has been successfully activated. Your opening balance is "+user.getAccount().getInitialBalance()+". You can " +
                "login using the username "+user.getEmail()+" and password "+user.getPassword()+" Thanks for choosing TD Bank.";

        boolean emailSent = emailController.sendEmail(user.getFirstName()+" "+user.getLastName(),comments);


        List usersList = userRepository.findAll();
        return new ModelAndView("adminPage","userList",usersList);
    }
}
