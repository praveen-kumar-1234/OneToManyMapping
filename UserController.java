package com.praveen.controller;

import com.praveen.entity.User;
import com.praveen.service.UserServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController
{
    @Autowired
    private UserServiceImp userService;


    @RequestMapping(value="/",method= RequestMethod.GET)
    public String homePage()
    {
        return "home";
    }

    @RequestMapping("/register")
    public String form()
    {
        return "user";
    }


    @PostMapping("/save")
    public String saveUser(User user)
    {
        User user1=userService.saveUser(user);
        return "success";
    }

//    @GetMapping("/fetchAll")
//    public List<User> fetchAllUsers()
//    {
//        return userService.fetchAll();
//    }

    @GetMapping("/fetchAll")
    public String fetchAllUsers(ModelMap model)
    {
        List<User> users;
        model.put("users",userService.fetchAll());
        return "viewUsers";
    }


    @RequestMapping("/delete/{userId}")
    public String delete(@PathVariable Long userId)
    {
        userService.deleteUser(userId);
        return "redirect:/fetchAll";
    }

    @RequestMapping("/edit/{userId}")
    public String edit(@PathVariable Long userId, ModelMap model)
    {
        model.put("command",userService.fetchById(userId));
        return "editUser";
    }

    @RequestMapping("/editandsave")
    public String editAndSave(User user)
    {
        User edit = userService.updateUser(user);
        return "redirect:/fetchAll";
    }

}
