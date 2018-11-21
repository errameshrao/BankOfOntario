package com.canadatrust;

import com.canadatrust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String authenticateUser(@RequestParam("userName") String userName, @RequestParam("password") String password , Model model) {



        User user = userService.getUserByUserName(userName);
        model.addAttribute("user", user);

        if(user.getUserType().equalsIgnoreCase("Admin")){
            return "adminPage";
        }else{
            return "customerPage";
        }
    }

}
