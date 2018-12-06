package com.canadatrust.service.impl;

import com.canadatrust.User;
import com.canadatrust.repository.UserRepository;
import com.canadatrust.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User getUserByUserName(String email) {
        return userRepository.getUserByUserName(email);
    }

    @Override
    public User getUserByPassword(String oldPassword) {
        return userRepository.getUserByPassword(oldPassword);
    }

    @Override
    public List getUserList() {
        return userRepository.getUserList();
    }
}
