package com.software.manager.web.common;

import com.software.manager.common.util.Result;
import com.software.manager.common.util.ResultUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: 胡国栋
 * @Description:
 * @Date:Create：in 2019/3/19 23:03
 * @Modified By：
 */
@Slf4j
@RestController
@Api(description = "Security相关接口")
@RequestMapping("/admin/common")
@Transactional
public class SecurityController {
    @RequestMapping(value = "/needLogin",method = RequestMethod.GET)
    @ApiOperation(value = "没有登录")
    public Result<Object> needLogin(){
        return new ResultUtil<Object>().setErrorMsg(401, "您还未登录");
    }
}
