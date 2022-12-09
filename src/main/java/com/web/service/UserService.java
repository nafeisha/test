package com.web.service;

import com.web.pojo.User;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;
@Repository
public interface UserService {
    public void insert(User user);
    public List<User> login(User user);
    public List<User> findAll();
    public void delete(Integer id);
    public User findById(Integer id);
    public void update(User user);
    public List<User> findByUser(User user);
}
