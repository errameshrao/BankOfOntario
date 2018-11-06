package com.canadatrust.service.impl;

import com.canadatrust.User;
import com.canadatrust.repository.UserRepository;
import com.canadatrust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {

     @Autowired
    UserRepository userRepository;

    @Override
    public User getUserByUserName(String userName) {
        return userRepository.getUserByUserName(userName);
    }
}
