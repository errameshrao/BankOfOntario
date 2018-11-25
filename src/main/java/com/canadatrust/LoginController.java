package com.canadatrust;

import com.canadatrust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String login() {
        return "login";
    }

    @RequestMapping("/logoutUser")
    public String logOut() {
        return "login";
    }

    @RequestMapping(value = "/loginUser", method = RequestMethod.POST)
    public String authenticateUser(@RequestParam("email") String email, @RequestParam("password") String password ,
                                   Model model, HttpSession httpSession) {



        User user = userService.getUserByUserName(email);
        if(user==null){
            model.addAttribute("Invalid", "Invalid Credentials");
            return "login";
        }

        httpSession.setAttribute("loggedInUser",user);
        model.addAttribute("user", user);
        if(user.getUserType().equalsIgnoreCase("Admin")){
            return "adminPage";
        }else{
            return "customerPage";
        }
    }

}
