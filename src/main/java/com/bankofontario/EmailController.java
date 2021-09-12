package com.bankofontario;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmailController {


    @RequestMapping(value = "/sendemail", method = RequestMethod.POST)
    public boolean sendEmail(String UserName, String UserComments, String email) {

        List<String> emailList = new ArrayList<String>();
        emailList.add(email);

        String [] bccRecepients =new String[]{"sugardaddy647@gmail.com"};

        boolean response = new SendEmail().sendMail(emailList, bccRecepients, "Account details and activation confirmation",
                UserComments,"sugardaddy647@gmail.com", "Ramesh@98s",UserName);
        return response;
    }
}
