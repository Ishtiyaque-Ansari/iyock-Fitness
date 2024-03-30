package com.iyock.gymmanager.service;

import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.User;

@Service
public interface NotificationService {
	void notifyUser(User user);
}
