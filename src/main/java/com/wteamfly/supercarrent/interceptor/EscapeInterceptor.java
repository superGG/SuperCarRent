/**
 * Copyright (c) 2014 Wteamfly.  All rights reserved. 网飞公司 版权所有.
 * 请勿修改或删除版权声明及文件头部.
 */
package com.wteamfly.supercarrent.interceptor;

import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 转码拦截器.
 * 
 * @author 侯骏雄
 * @since 3.0.0
 */
public class EscapeInterceptor extends AbstractInterceptor {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    
    /**
     * log4j实例对象.
     */
    private static Logger logger = LogManager.getLogger(EscapeInterceptor.class
            .getName());

    /**
     * 拦截action进行参数转码处理.
     * 
     * @param invocation
     *            action作用域
     * @throws Exception
     *             普通异常
     * @return 拦截结果
     */
    @SuppressWarnings("unchecked")
    @Override
    public final String intercept(final ActionInvocation invocation)
            throws Exception {
        logger.debug("进入转码拦截器");
        // 获取参数
        ActionContext ctx = invocation.getInvocationContext();
        @SuppressWarnings("rawtypes")
        Map parm = ctx.getParameters();
        Object[] tempObjArr = null;
        Object[] turnObjArr = null;
        for (Object key : parm.keySet()) {
            tempObjArr = (Object[]) parm.get(key);
            if (tempObjArr[0] != null && tempObjArr[0].getClass().isAssignableFrom(String.class)) {
                turnObjArr = new Object[1];
                turnObjArr[0] = new String(
                        ((String) tempObjArr[0]).getBytes("iso-8859-1"),
                        "utf-8");
                parm.put(key, turnObjArr);
            }
        }
        invocation.invoke();
        logger.debug("退出转码拦截器");
        return null;
    }
}
