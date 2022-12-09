package com.web.service.Impl;

import com.web.dao.UserDao;
import com.web.pojo.User;
import com.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public void insert(User user) {
        userDao.insert(user);
    }

    @Override
    public List<User> login(User user) {
        return userDao.login(user);
    }

    @Override
    public List<User> findAll(){return userDao.findAll();}

    @Override
    public void delete(Integer id){userDao.delete(id);};

    @Override
    public User findById(Integer id) {
        return userDao.findById(id);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }
    @Override
    public List<User> findByUser(User user){
        return userDao.findByUser(user);
    }
}
