package com.website.Model;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.website.Model.EmailUser;

public class SendMail {
	/*
	1)Google Account -> Security -> 2-Step Verification -> Input password as asked -> Turn ON (you could use SMS to get Gmail code to activate 2-Step Verification)
	2)Google Account -> Security -> App password -> Input password as asked -> Select the app and device... -> e.g. Other(Custom name) -> Input app name e.g. MyApp -> Generate
	3)Copy a 16-character password
	4)Use a 16-character password with Gmail username in your application
    */
	public static void main(String[] args) {
	}
		/*<dependency>
        <groupId>com.sun.mail</groupId>
        <artifactId>javax.mail</artifactId>
        <version>1.6.2</version>
    	</dependency>*/
	public boolean sendEmail(EmailUser eu) {
		boolean test = false;
		//EmailUser eu = new EmailUser();
		String to = eu.getEmail();

         String from = "nr470245@gmail.com";
         String host = "smtp.gmail.com";
         Properties properties = System.getProperties();

         properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

         Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

            protected PasswordAuthentication getPasswordAuthentication() {

                return new PasswordAuthentication("nr470245@gmail.com", "slzgaqngivyfklth");

            }

        });

         session.setDebug(true);

        try {
             MimeMessage message = new MimeMessage(session);
             message.setFrom(new InternetAddress(from));

             message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

             message.setSubject("Test Mail");
             message.setText("This is the verification code: "+eu.getCode());

            System.out.println("sending...");
             Transport.send(message);
             test=true;
            System.out.println("Sent message successfully....");
        } catch (MessagingException mex) {
            mex.printStackTrace();
        }
        return test;

    }

	public String getRandom() {
		Random rnd = new Random();
		int number = rnd.nextInt(999999);
		return String.format("%06d", number);
	}
	
}