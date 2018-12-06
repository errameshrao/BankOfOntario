package com.canadatrust;

import com.canadatrust.repository.UserRepository;
import com.canadatrust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    @RequestMapping("/")
    public String login() {
        return "login";
    }

    @RequestMapping("/logoutUser")
    public String logOut(HttpSession httpSession) {
        httpSession.removeAttribute("loggedInUser");
        return "login";
    }

    @RequestMapping("/openChangePassword")
    public String openChangePassword() {
        return "changePasswordPage";
    }

    @RequestMapping("/changePassword")
    public ModelAndView changePassword(HttpSession httpSession,Model model,@RequestParam("oldPassword") String oldPassword,
                                 @RequestParam("newPassword") String newPassword) {

        User userByOldPassword = userService.getUserByPassword(oldPassword);

        User loggedInuser = (User) httpSession.getAttribute("loggedInUser");

        if (userByOldPassword !=null && userByOldPassword.equals(loggedInuser)) {

            loggedInuser.setPassword(newPassword);
            userRepository.save(loggedInuser);
            httpSession.setAttribute("loggedInUser",loggedInuser);
            return new ModelAndView("login", "message", "Password changed successfully");


        }else{
            return new ModelAndView("changePasswordPage", "message", "No user found with given password");
        }
    }

    @RequestMapping(value = "/loginUser", method = RequestMethod.POST)
    public ModelAndView authenticateUser(@RequestParam("email") String email, @RequestParam("password") String password ,
                                   Model model, HttpSession httpSession) {

        User user = userService.getUserByUserName(email);
        if(user==null){
            model.addAttribute("loginMessage", "Invalid User name or password");
            return new ModelAndView ("errorPage");
        }

        if(user.getPassword().equalsIgnoreCase(password) && user.getUserType().equalsIgnoreCase("Admin")){

            List usersList = userRepository.findAll();
            httpSession.setAttribute("loggedInUser",user);
            model.addAttribute("user", user);
            return new ModelAndView("adminPage","userList",usersList);
        }else if(user.getPassword().equalsIgnoreCase(password) && user.getUserType().equalsIgnoreCase("normal")){
            httpSession.setAttribute("loggedInUser",user);
            model.addAttribute("user", user);
            return new ModelAndView("customerPage");
        }else{
            model.addAttribute("loginMessage", "Invalid User name or password");
            return new ModelAndView( "errorPage");
        }
    }

}
