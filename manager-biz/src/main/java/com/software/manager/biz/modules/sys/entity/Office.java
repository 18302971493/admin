package com.software.manager.biz.modules.sys.entity;

import com.software.manager.biz.base.BaseEntity;
import com.software.manager.common.constant.CommonConstant;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.Transient;
import java.math.BigDecimal;
/**
 * @Author: 胡国栋
 * @Description:
 */
@Data
public class Office extends BaseEntity<Office> {


    @ApiModelProperty(value = "部门名称")
    private String title;

    @ApiModelProperty(value = "父id")
    private String parentId;

    @ApiModelProperty(value = "是否为父节点(含子节点) 默认false")
    private Boolean isParent = false;

    @ApiModelProperty(value = "排序值")
    private BigDecimal sortOrder;

    @ApiModelProperty(value = "是否启用 0启用 -1禁用")
    private Integer status = CommonConstant.STATUS_NORMAL;

    @Transient
    @ApiModelProperty(value = "父节点名称")
    private String parentTitle;
}