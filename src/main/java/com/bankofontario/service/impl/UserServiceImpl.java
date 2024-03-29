package com.bankofontario.service.impl;

import com.bankofontario.User;
import com.bankofontario.repository.UserRepository;
import com.bankofontario.service.UserService;
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

    @Override
    public User getUserById(String id) {
        return userRepository.getUserById(id);
    }

    @Override
    public User getUserByEmailPwd(String email, String password) {
        return userRepository.getUserByEmailPwd(email,password);
    }
}
