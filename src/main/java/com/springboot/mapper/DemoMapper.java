package com.springboot.mapper;

import java.util.List;
import java.util.Map;

import com.springboot.bean.Demo;
import com.springboot.dynamicDataSource.Master;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;


@Mapper
public interface DemoMapper {


	public int insert(Demo demo);

	public int save(Demo demo);

	public int update(Demo demo);

	public Demo selectById(int id);

	public List<Demo> selectAll();

	public int delete(int id);

	public List<Map> selectUserAndDemo();

	public default void testDefault(){
		System.out.println("我是新特性default");
	}

	public static void testStatic(){
		System.out.println("我是新特性testStatic");
	}




}
