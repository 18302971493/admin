package com.software.manager.biz.modules.sys.dao;



import com.software.manager.biz.base.CrudDao;
import com.software.manager.biz.modules.sys.entity.Role;

import java.util.List;

/**
 * @Author: 胡国栋
 * @Description:角色数据处理层
 */
public interface RoleDao extends CrudDao<Role> {

    /**
     * 获取默认角色
     * @param defaultRole
     * @return
     */
    List<Role> findByDefaultRole(Boolean defaultRole);
}
