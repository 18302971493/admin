package com.software.manager.biz.modules.user.service;

import com.software.manager.biz.modules.user.dao.UserDao;
import com.software.manager.biz.modules.user.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 胡国栋
 * @description
 * @date 2019-03-19 13:50
 */
@Service
public class UserService {
    @Autowired
    private UserDao userDao;

    public List<User> getUser(){
        return userDao.getUser();
    }
}
