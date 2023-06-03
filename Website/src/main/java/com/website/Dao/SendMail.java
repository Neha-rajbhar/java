package com.website.Dao;

import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.website.Model.EmailUser;

public class SendMail {
public static void main(String[] args) {
	new SendMail().sendEmail(new EmailUser());
}

	public String getRandom() {
		Random rnd = new Random();
		int number = rnd.nextInt(999999);
		return String.format("%06d", number);
	}
	
	public boolean sendEmail(EmailUser eu) {
		boolean test = false;
		
		String toEmail = "balram.asati91090@gmail.com";//eu.getEmail();
		String fromEmail = "nr470245@gmail.com";
		String password = "slzgaqngivyfklth";
		String host = "smtp.gmail.com";
		try {
			Properties pr = System.getProperties();
		   // pr.setProperty("mail.smtp.host",  "smtp.gmail.com");
	        //pr.setProperty("mail.smtp.port", "587");
	        //pr.setProperty("mail.smtp.auth", "true");
	        //pr.setProperty("mail.smtp.ssl.enable", "true");
			 pr.put("mail.smtp.host", host);
		        pr.put("mail.smtp.port", "587");
		        pr.put("mail.smtp.ssl.enable", "true");
		        pr.put("mail.smtp.auth", "true");
			
			pr.put("mail.smtp.socketFactory.port", "587");
	        pr.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	       
	        Session session = Session.getInstance(pr, new javax.mail.Authenticator() {
	       
	        
	        @Override
	        protected PasswordAuthentication getPasswordAuthentication() {
	        	return new PasswordAuthentication(fromEmail, password);
	        }
	        
		});
	        
	        Message mess = new MimeMessage(session);
	        mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
	        mess.setSubject("User Forget Password Email Verification");
	        mess.setText("Email Verified Successfully.Please Use this code: "+eu.getCode());
	        
	        Transport.send(mess);
	        
	        test=true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return test;
	}
}
