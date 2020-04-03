package com.springboot.dynamicDataSource;

/**
 * 设置路由key / 查找数据源
 *
 * 目标数据源就是那前3个masterDataSource,slave1DataSource,slave2DataSource，但是使用的时候是如果查找数据源的呢？
 *
 * 首先，定义一个枚举来代表这三个数据源
 */
public enum DBTypeEnum {
    MASTER, SLAVE1, SLAVE2;
}
