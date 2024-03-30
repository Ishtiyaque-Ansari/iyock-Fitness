package com.iyock.gymmanager.serviceimpl;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.dao.MemberDao;
import com.iyock.gymmanager.service.NotificationService;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

@Service
public class NotificationServiceImpl implements NotificationService {

	@Autowired
	MemberDao memberDao;

	@Override
	public void notifyUser(User user) {
		// TODO Auto-generated method stub
		try {
			sendEmail(user.getEmail(), "Member is created",
					"Hello "+user.getFirstName()+",\n\t Congratulations, You're registerd for IYOCK Fitness Gym and your username is "
							+ user.getUsername() + " and id is :" + user.getId() + ".");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void sendEmail(String recipientEmail, String subject, String messageBody) throws MessagingException {
		// Sender's email address and password
		String senderEmail = "iyockfitness@gmail.com";
		String senderPassword = "farahji@1";

		// SMTP server details
		String smtpHost = "smtp.gmail.com";
	    int smtpPort = 587; // or 25, 465, depending on your SMTP server configuration

		// Create properties for the JavaMail session
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", smtpHost);
		props.put("mail.smtp.port", smtpPort);

		
		Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        };
		
		Session session = Session.getInstance(props, authenticator);

		// Create a MimeMessage object
		MimeMessage message = new MimeMessage(session);
		message.setFrom(new InternetAddress(senderEmail));
		message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));
		message.setSubject(subject);
		message.setText(messageBody);

		// Send the message
		Transport.send(message);

		System.out.println("Email sent successfully to " + recipientEmail);
	}

}
