package com.bankofontario.service;

import com.bankofontario.User;

import java.util.List;

public interface UserService {

    User getUserByUserName(String email);

    User getUserByPassword(String oldPassword);

    List getUserList();

    User getUserById(String id);

    User getUserByEmailPwd(String email, String password);
}
