package com.praveen.service;


import com.praveen.entity.User;
import com.praveen.repo.UserInfoRepo;
import com.praveen.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImp implements UserService{

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private UserInfoRepo userInfoRepo;


    public User saveUser(User user)
    {
        return userRepo.save(user);
    }


    public List<User> fetchAll()
    {
        return userRepo.findAll();
    }

    public User fetchById(Long id)
    {
        return userRepo.findById(id).orElse(null);
    }

    @Override
    public void deleteUser(Long userId) {
        userRepo.deleteById(userId);
    }


    @Override
    public User updateUser(User user) {
        User newRecord =userRepo.findById(user.getUserId()).get();
        newRecord.setUserName(user.getUserName());
        newRecord.setEmail(user.getEmail());
        newRecord.getUserInfo().setUserInfoId(user.getUserInfo().getUserInfoId());
        newRecord.getUserInfo().setGender(user.getUserInfo().getGender());
        newRecord.getUserInfo().setMobile(user.getUserInfo().getMobile());
        newRecord.getUserInfo().setNationality(user.getUserInfo().getNationality());


        return userRepo.save(newRecord);
    }








}
