package com.software.manager.biz.modules.sys.dao;


import com.software.manager.biz.base.CrudDao;
import com.software.manager.biz.modules.sys.entity.Role;
import com.software.manager.biz.modules.sys.entity.UserRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author: 胡国栋
 * @Description:用户角色数据处理层
 */
public interface UserRoleDao extends CrudDao<UserRole> {

    /**
     * 通过roleId查找
     * @param roleId
     * @return
     */
    List<UserRole> findByRoleId(String roleId);

    /**
     * 删除用户角色
     * @param userId
     */
    void deleteByUserId(String userId);

    /**
     * 通过用户id获取
     * @param userId
     * @return
     */
    List<Role> findByUserId(@Param("userId") String userId);

    /**
     * 通过用户id获取用户角色关联的部门数据
     * @param userId
     * @return
     */
    List<String> findDepIdsByUserId(@Param("userId") String userId);
}
