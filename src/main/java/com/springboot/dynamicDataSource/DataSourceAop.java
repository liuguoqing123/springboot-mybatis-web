package com.springboot.dynamicDataSource;
import com.springboot.dynamicDataSource.DBContextHolder;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * 设置路由key
 *
 * 默认情况下，所有的查询都走从库，插入/修改/删除走主库。我们通过方法名来区分操作类型（CRUD）
 */
@Aspect
@Component
public class DataSourceAop {
    /**
     * 查询方法。
     */
    @Pointcut("!@annotation(com.springboot.dynamicDataSource.Master) " +
            "&& (execution(* com.springboot.service..*.select*(..)) " +
            "|| execution(* com.springboot.service..*.get*(..)))")
    public void readPointcut() {
        System.out.println("DataSourceAop.readPointcut");
    }

    /**
     * 事务方法
     */
    @Pointcut("@annotation(com.springboot.dynamicDataSource.Master) " +
            "|| execution(* com.springboot.service..*.insert*(..)) " +
            "|| execution(* com.springboot.service..*.add*(..)) " +
            "|| execution(* com.springboot.service..*.update*(..)) " +
            "|| execution(* com.springboot.service..*.edit*(..)) " +
            "|| execution(* com.springboot.service..*.delete*(..)) " +
            "|| execution(* com.springboot.service..*.remove*(..))")
    public void writePointcut() {
        System.out.println("DataSourceAop.writePointcut");
    }

    @Before("readPointcut()")
    public void read() {
        System.out.println("DataSourceAop.read");
        DBContextHolder.slave();
    }

    @Before("writePointcut()")
    public void write() {
        System.out.println("DataSourceAop.write");
        DBContextHolder.master();
    }
    /**
     * 另一种写法：if...else... 判断哪些需要读从数据库，其余的走主数据库
     */
// @Before("execution(* com.cjs.example.service.impl.*.*(..))")
// public void before(JoinPoint jp) {
// String methodName = jp.getSignature().getName();
//
// if (StringUtils.startsWithAny(methodName, "get", "select", "find")) {
// DBContextHolder.slave();
// }else {
// DBContextHolder.master();
// }
// }
}
