package com.bankofontario;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {

    private String SMTP_HOST ="smtp.gmail.com";


    public boolean sendMail(List<String> recipients, String[] bccRecepients, String subject, String message,
                            String fromAddress, String password, String name)
    {
        /*String FROM_ADDRESS =fromAddress;
        String PASSWORD =password;
        String FROM_NAME=name;*/

        try{
            Properties props =new Properties();
            props.put("mail.smtp.host",SMTP_HOST );
            props.put("mail.smtp.auth", "true");
            props.put("mail.debug", "false");
            props.put("mail.smtp.ssl.enable", "true");


            Session session = Session.getInstance(props, new javax.mail.Authenticator(){
                protected PasswordAuthentication getPasswordAuthentication()
                {
                    return new PasswordAuthentication(fromAddress,password);
                }
            });

            Message msg = new MimeMessage(session);
            InternetAddress from = new InternetAddress(fromAddress, name);
            msg.setFrom(from);
            //To Recipients
            InternetAddress[] toAddresses = new InternetAddress[recipients.size()];

            for (int i =0;i<=recipients.size()-1; i++)
            {
                toAddresses[i] = new InternetAddress(recipients.get(i));
            }
            msg.setRecipients(Message.RecipientType.TO, toAddresses);
            //BCC Recipients
            InternetAddress[] bccAddresses = new InternetAddress[bccRecepients.length];
            for (int i =0;i<bccRecepients.length; i++)
            {
                bccAddresses[i] = new InternetAddress(bccRecepients[i]);
            }
            msg.setRecipients(Message.RecipientType.BCC, bccAddresses);
            msg.setSubject(subject);
            msg.setContent(message,"text/plain");
            Transport.send(msg);
            System.out.println("email sent successfully");
            return true;
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return false;

    }

}


