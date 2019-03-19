package com.software.manager.common.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author 胡国栋
 */
@Data
public class IpLocate implements Serializable {

    private String retCode;

    private City result;
}

