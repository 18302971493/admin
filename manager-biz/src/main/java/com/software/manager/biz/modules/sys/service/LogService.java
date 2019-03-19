package com.software.manager.biz.modules.sys.service;

import com.software.manager.biz.base.CrudService;
import com.software.manager.biz.modules.sys.dao.LogDao;
import com.software.manager.biz.modules.sys.entity.Log;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 日志接口实现
 */
@Slf4j
@Service
@Transactional
public class LogService extends CrudService<LogDao, Log> {

}
