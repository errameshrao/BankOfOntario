package com.canadatrust;

import com.canadatrust.User;
import com.canadatrust.repository.UserRepository;
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

@Controller
public class UserController {


    @Autowired
    private UserRepository userRepository;

    @RequestMapping(value = "/openaccount", method = RequestMethod.GET)
    public ModelAndView showForm(HttpSession httpSession, Model model) {
        User loggedInuser = (User) httpSession.getAttribute("loggedInUser");
        model.addAttribute("loggedInUser",loggedInuser);
        return new ModelAndView("register", "user", new User());
    }


    @ModelAttribute
    @RequestMapping(value="/registerUser", method = RequestMethod.POST)
    public ModelAndView registerUser(@Valid @ModelAttribute("user") User user,
                                     BindingResult result, ModelMap model){

        user.setCreateDate(new Date());
        user.setUserType("admin");
        userRepository.save(user);

        return new ModelAndView("adminPage");
    }
}
