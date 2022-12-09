package com.web.controller;

import com.web.pojo.User;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/insert.html")
    public String toInsert(){
        System.out.println("Redirection...");
        return "insert";
    }
    @RequestMapping("/insert.do")
    public String insert(User user){
        userService.insert(user);
        return "login";
    }
    @RequestMapping("/login")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("/login.do")
    public String login(User user){
        if(userService.login(user).size()>0){
            return "forward:findAll.do";
        }else{
            return "login";
        }
    }

    @RequestMapping("findAll.do")
    public String findAll(Model model){
        List<User> list=userService.findAll();
        if (list.size()>0){
            model.addAttribute("list",list);
            return "index";
        }else {
            return "login";
        }
    }

    @RequestMapping("/delete.do")
    public String delete(Integer id){
        userService.delete(id);
        return "forward:findAll.do";
    }

    @RequestMapping("/findById.do")
    public String findById(Integer id,Model model){
        User user= userService.findById(id);
        model.addAttribute("user",user);
        return "update";
    }

    @RequestMapping("/update.do")
    public String update(User user){
        userService.update(user);
        return "forward:findAll.do";
    }

    @RequestMapping("/findByUser.do")
    public String findByUser(User user,Model model){
        List<User> list=userService.findByUser(user);
        model.addAttribute("list",list);
        return "index";
    }
}
