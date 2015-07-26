/**
 * Copyright (c) 2014 Wteamfly.  All rights reserved. 网飞公司 版权所有.
 * 请勿修改或删除版权声明及文件头部.
 */
package com.wteamfly.supercarrent.helper;

import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * http访问操作工具类.
 * 
 * @since 3.0.0
 */
public final class ConstantVar {
    /**
     * log4j实例对象.
     */
    private static Logger logger = LogManager.getLogger(ConstantVar.class
            .getName());

    
    public final static String CARTYPE = "car";
    
    public final static String ORDERSTYPE = "order";
    
    
}
