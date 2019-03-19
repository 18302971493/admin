package com.software.manager.biz.modules.sys.service;

import com.software.manager.biz.base.CrudService;
import com.software.manager.biz.modules.sys.dao.UserRoleDao;
import com.software.manager.biz.modules.sys.entity.Role;
import com.software.manager.biz.modules.sys.entity.UserRole;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 用户角色接口实现
 */
@Slf4j
@Service
@Transactional
@CacheConfig(cacheNames = "userRole")
public class UserRoleService extends CrudService<UserRoleDao, UserRole> {

    @Autowired
    private UserRoleDao userRoleDao;

    public List<UserRole> findByRoleId(String roleId) {
        return userRoleDao.findByRoleId(roleId);
    }

    public void deleteByUserId(String userId) {
        userRoleDao.deleteByUserId(userId);
    }
    @Cacheable(key = "#userId")
    public List<Role> findByUserId(String userId) {
        return userRoleDao.findByUserId(userId);
    }
    @Cacheable(key = "'depIds:'+#userId")
    public List<String> findDepIdsByUserId(String userId){
        return userRoleDao.findDepIdsByUserId(userId);
    }

}
