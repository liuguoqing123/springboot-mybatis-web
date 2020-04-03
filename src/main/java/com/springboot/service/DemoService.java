package com.springboot.service;

import com.springboot.bean.Demo;
import java.util.List;




public interface DemoService {

	public int insert(Demo demo);

	public int save(Demo demo);

	public List<Demo> selectAll();

	public int update(Demo demo);

	public Demo selectById(int id);

	public int delete(int id);

}
