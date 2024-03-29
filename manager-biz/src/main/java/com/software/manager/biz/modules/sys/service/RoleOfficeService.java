package com.software.manager.biz.modules.sys.service;
import com.software.manager.biz.base.CrudService;
import com.software.manager.biz.modules.sys.dao.RoleOfficeDao;
import com.software.manager.biz.modules.sys.entity.RoleOffice;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 角色部门接口实现
 */
@Slf4j
@Service
@Transactional
public class RoleOfficeService extends CrudService<RoleOfficeDao, RoleOffice> {

    @Autowired
    private RoleOfficeDao roleOfficeDao;


    public List<RoleOffice> findByRoleId(String roleId) {

        return roleOfficeDao.findByRoleId(roleId);
    }

    public void deleteByRoleId(String roleId) {

        roleOfficeDao.deleteByRoleId(roleId);
    }

    public void deleteByOfficeId(String officeId) {

        roleOfficeDao.deleteByOfficeId(officeId);
    }
}