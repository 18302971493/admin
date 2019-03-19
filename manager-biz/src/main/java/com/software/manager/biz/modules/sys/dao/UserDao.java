package com.software.manager.biz.modules.sys.dao;

import com.software.manager.biz.base.CrudDao;
import com.software.manager.biz.modules.sys.entity.User;

import java.util.List;

/**
 * @Author: 胡国栋
 * @Description:用户数据处理层
 */
public interface UserDao extends CrudDao<User> {

    /**
     * 通过用户名获取用户
     * @param username
     * @return
     */
    List<User> findByUsername(String username);

    /**
     * 通过手机获取用户
     * @param mobile
     * @return
     */
    List<User> findByMobile(String mobile);

    /**
     * 通过邮件获取用户
     * @param email
     * @return
     */
    List<User> findByEmail(String email);

    /**
     * 通过部门id获取
     * @param officeId
     * @return
     */
    List<User> findByOfficeId(String officeId);
}
