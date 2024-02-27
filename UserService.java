package com.praveen.service;

import com.praveen.entity.User;

import java.util.List;

public interface UserService {

    User saveUser( User user);

    List<User> fetchAll();

    User fetchById(Long id);


    void deleteUser(Long userId);

    User updateUser(User user);
}
