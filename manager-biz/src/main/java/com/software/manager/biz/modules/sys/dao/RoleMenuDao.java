package com.software.manager.biz.modules.sys.dao;



import com.software.manager.biz.base.CrudDao;
import com.software.manager.biz.modules.sys.entity.RoleMenu;

import java.util.List;

/**
 * @Author: 胡国栋
 * @Description:角色权限数据处理层
 */
public interface RoleMenuDao extends CrudDao<RoleMenu> {

    /**
     * 通过permissionId获取
     * @param menuId
     * @return
     */
    List<RoleMenu> findByMenuId(String menuId);

    /**
     * 通过roleId获取
     * @param roleId
     */
    List<RoleMenu> findByRoleId(String roleId);

    /**
     * 通过roleId删除
     * @param roleId
     */
    void deleteByRoleId(String roleId);

}