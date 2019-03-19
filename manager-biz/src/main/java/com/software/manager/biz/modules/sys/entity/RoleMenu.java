package com.software.manager.biz.modules.sys.entity;

import com.software.manager.biz.base.BaseEntity;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Author: 胡国栋
 * @Description:
 */
public class RoleMenu extends BaseEntity<RoleMenu> {
    @ApiModelProperty(value = "角色id")
    private String roleId;

    @ApiModelProperty(value = "权限id")
    private String menuId;

}
