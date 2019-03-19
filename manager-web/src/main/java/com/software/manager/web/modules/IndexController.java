package com.software.manager.web.modules;

import com.software.manager.biz.modules.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 胡国栋
 * @description
 * @date 2019-03-19 13:45
 */
@RestController
public class IndexController {
    @Autowired
    private UserService userService;
    @RequestMapping("/")
    public Object index(){
        return userService.getUser();
    }
}
