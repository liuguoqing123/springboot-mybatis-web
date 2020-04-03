package com.springboot.dynamicDataSource;

/**
 * 有一般情况就有特殊情况，特殊情况是某些情况下需要强制读主库，针对这种情况，定义一个主键，用该注解标注的就读主库
 */
public @interface Master {
}
