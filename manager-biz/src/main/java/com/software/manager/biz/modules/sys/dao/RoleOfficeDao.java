package com.software.manager.biz.modules.sys.dao;


import com.software.manager.biz.base.CrudDao;
import com.software.manager.biz.modules.sys.entity.RoleOffice;

import java.util.List;

/**
 * @Author: 胡国栋
 * @Description:角色部门数据处理层
 */
public interface RoleOfficeDao extends CrudDao<RoleOffice> {

    /**
     * 通过roleId获取
     * @param roleId
     * @return
     */
    List<RoleOffice> findByRoleId(String roleId);

    /**
     * 通过角色id删除
     * @param roleId
     */
    void deleteByRoleId(String roleId);

    /**
     * 通过角色id删除
     * @param officeId
     */
    void deleteByOfficeId(String officeId);
}