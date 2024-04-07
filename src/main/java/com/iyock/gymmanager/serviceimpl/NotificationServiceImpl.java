package com.iyock.gymmanager.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.Member;
import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.dao.MemberDao;
import com.iyock.gymmanager.service.NotificationService;

import jakarta.mail.MessagingException;

@Service
public class NotificationServiceImpl implements NotificationService {

	@Autowired
	MemberDao memberDao;

	@Autowired
	public JavaMailSender javaMailSender;

	@Override
	public void notifyMember(Member member) {
		// TODO Auto-generated method stub
		try {
			sendEmail(member.getEmail(), "Member is created", createEMailBody(member));
		} catch (MessagingException e) {
			System.err.println(e.getMessage());
			e.printStackTrace();
		}
	}

	private void sendEmail(String toAddress, String subject, String body) throws MessagingException {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(toAddress);
		message.setSubject(subject);
		message.setText(body);
		javaMailSender.send(message);
	}

	private String createEMailBody(Member member) {
		return "Hello " + member.getFirstName()
				+ ",\n\n\t Congratulations, You're registerd for Iyock Fitness Gym and your username is "
				+ member.getUsername() + " and Password is " + member.getPassword() + " and id is :" + member.getId() + ".\nYou're allocated the package "+member.getMemberShipPackage().getValue()+"\n\n" + "Best Regards,\n" + "Team Iyock Fitness";
	}

	@Override
	public void notifyUser(User user) {
		// TODO Auto-generated method stub
		
	}

}
