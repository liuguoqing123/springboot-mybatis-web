package com.springboot.dynamicDataSource;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;
import org.springframework.lang.Nullable;

/**
 * 获取路由key
 */
public class MyRoutingDataSource extends AbstractRoutingDataSource {
    @Nullable
    @Override
    protected Object determineCurrentLookupKey() {
        System.out.println("MyRoutingDataSource.determineCurrentLookupKey");
        return DBContextHolder.get();
    }
}
