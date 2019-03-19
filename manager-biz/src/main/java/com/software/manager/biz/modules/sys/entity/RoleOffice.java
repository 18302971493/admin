package com.software.manager.biz.modules.sys.entity;

import com.software.manager.biz.base.BaseEntity;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Author: 胡国栋
 * @Description:
 */
@Data
public class RoleOffice extends BaseEntity<RoleOffice> {
    @ApiModelProperty(value = "角色id")
    private String roleId;

    @ApiModelProperty(value = "部门id")
    private String officeId;
}
