package com.software.manager.biz.modules.sys.entity;

import com.software.manager.biz.base.BaseEntity;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Transient;
/**
 * @Author: 胡国栋
 * @Description:
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class UserRole extends BaseEntity<UserRole> {


    @ApiModelProperty(value = "用户唯一id")
    private String userId;

    @ApiModelProperty(value = "角色唯一id")
    private String roleId;

    @Transient
    @ApiModelProperty(value = "角色名")
    private String roleName;
}
