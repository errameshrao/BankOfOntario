package com.bankofontario;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmailController {



    @RequestMapping(value = "/sendemail", method = RequestMethod.POST)
    public boolean sendEmail( String UserName,String UserComments, String[] recepients ) {


        String [] bccRecepients =new String[]{};

        boolean response = new SendEmail().sendMail(recepients, bccRecepients, "Account details and activation confirmation",
                UserComments,"bankofontario2020@gmail.com", "BooTest@2020",UserName);
        return response;
    }
}
