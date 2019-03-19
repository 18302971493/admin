package com.software.manager.biz.modules.sys.dao;



import com.software.manager.biz.base.CrudDao;
import com.software.manager.biz.modules.sys.entity.Office;

import java.util.List;
/**
 * @Author: 胡国栋
 * @Description:部门数据处理层
 */
public interface OfficeDao extends CrudDao<Office> {

    /**
     * 通过父id获取 升序
     * @param parentId
     * @return
     */
    List<Office> findByParentIdOrderBySortOrder(String parentId);

    /**
     * 通过父id获取 升序 数据权限
     * @param parentId
     * @param officeId
     * @return
     */
    List<Office> findByParentIdAndIdInOrderBySortOrder(String parentId, List<String> officeId);

    /**
     * 通过父id和状态获取 升序
     * @param parentId
     * @param status
     * @return
     */
    List<Office> findByParentIdAndStatusOrderBySortOrder(String parentId, Integer status);

    /**
     * 部门名模糊搜索 升序
     * @param title
     * @return
     */
    List<Office> findByTitleLikeOrderBySortOrder(String title);

    /**
     * 部门名模糊搜索 升序 数据权限
     * @param title
     * @param departmentIds
     * @return
     */
    List<Office> findByTitleLikeAndIdInOrderBySortOrder(String title, List<String> departmentIds);
}