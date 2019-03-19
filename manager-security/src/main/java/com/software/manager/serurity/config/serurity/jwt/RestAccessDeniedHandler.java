package com.software.manager.serurity.config.serurity.jwt;

import com.software.manager.common.util.ResponseUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: 胡国栋
 * @Description:
 * @Date:Create：in 2019/3/19 22:06
 * @Modified By：
 */
@Component
@Slf4j
public class RestAccessDeniedHandler implements AccessDeniedHandler {
    @Override
    public void handle(HttpServletRequest httpServletRequest, HttpServletResponse response, AccessDeniedException e) throws IOException, ServletException {
        ResponseUtil.out(response,ResponseUtil.resultMap(false,403,"抱歉，您没有访问权限"));
    }
}
