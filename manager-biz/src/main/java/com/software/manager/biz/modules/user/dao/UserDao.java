package com.software.manager.biz.modules.user.dao;

import com.software.manager.biz.modules.user.entity.User;

import java.util.List;

/**
 * @author 胡国栋
 * @description
 * @date 2019-03-19 13:51
 */
public interface UserDao {
     List<User> getUser();
}
