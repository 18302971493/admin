package com.software.manager.serurity.config.serurity;

import cn.hutool.core.util.StrUtil;
import com.software.manager.biz.modules.sys.entity.Menu;
import com.software.manager.biz.modules.sys.entity.Role;
import com.software.manager.biz.modules.sys.entity.User;
import com.software.manager.common.constant.CommonConstant;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


/**
 * @Author: 胡国栋
 * @Description:
 */
@Slf4j
public class SecurityUserDetails extends User implements UserDetails {

    private static final long serialVersionUID = 1L;

    public SecurityUserDetails(User user){
        if(user!=null) {
            this.setUsername(user.getUsername());
            this.setPassword(user.getPassword());
            this.setStatus(user.getStatus());
            this.setRoles(user.getRoles());
            this.setMenuList(user.getMenuList());
        }
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> authorityList = new ArrayList<>();
        List<Menu> menuList = this.getMenuList();
        // 添加请求权限
        if(menuList!=null&&menuList.size()>0){
            for (Menu menu : menuList) {
                if(CommonConstant.PERMISSION_OPERATION.equals(menu.getType())
                        && StrUtil.isNotBlank(menu.getTitle())
                        &&StrUtil.isNotBlank(menu.getPath())) {

                    authorityList.add(new SimpleGrantedAuthority(menu.getTitle()));
                }
            }
        }
        // 添加角色
        List<Role> roles = this.getRoleList();
        if(roles!=null&&roles.size()>0){
            // lambda表达式
            roles.forEach(item -> {
                if(StrUtil.isNotBlank(item.getName())){
                    authorityList.add(new SimpleGrantedAuthority(item.getName()));
                }
            });
        }
        return authorityList;
    }
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return CommonConstant.USER_STATUS_LOCK.equals(this.getStatus()) ? false : true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return CommonConstant.USER_STATUS_NORMAL.equals(this.getStatus()) ? true : false;
    }
}