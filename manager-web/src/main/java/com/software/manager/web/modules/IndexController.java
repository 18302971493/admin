package com.software.manager.web.modules;

import com.software.manager.biz.modules.sys.entity.User;
import com.software.manager.biz.modules.sys.service.UserService;
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
        User user=new User();
        user.setType(1);
        user.setSort("create_time");
        user.setOrder("desc");
        return userService.findPage(user,1,1);
    }
}
