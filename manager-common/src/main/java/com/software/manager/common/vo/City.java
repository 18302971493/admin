package com.software.manager.common.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @author Exrickx
 */
@Data
public class City implements Serializable {

    String country;

    String province;

    String city;
}
