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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    private UserRepository userRepository;

    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/openaccount", method = RequestMethod.GET)
    public ModelAndView showForm(HttpSession httpSession, Model model) {
        User loggedInuser = (User) httpSession.getAttribute("loggedInUser");
        model.addAttribute("loggedInUser",loggedInuser);
        return new ModelAndView("register", "user", new User());
    }


    @RequestMapping(value = "/myProfilePage")
    public ModelAndView openUserProfile(HttpSession httpSession){

        User user = (User)httpSession.getAttribute("loggedInUser");

        return new ModelAndView("userProfile","User",user);
    }

    @ModelAttribute
    @RequestMapping(value="/registerUser", method = RequestMethod.POST)
    public ModelAndView registerUser(@Valid @ModelAttribute("user") User user,
                                     BindingResult result, ModelMap model){
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

        return new ModelAndView("adminPage");
    }
}
