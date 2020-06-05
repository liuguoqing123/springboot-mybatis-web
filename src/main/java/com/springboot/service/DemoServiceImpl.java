package com.springboot.service;

import com.springboot.bean.Demo;
import com.springboot.dynamicDataSource.Master;
import com.springboot.mapper.DemoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class DemoServiceImpl implements  DemoService{
    @Autowired
    DemoMapper demoMapper;


    @Transactional
    @Override
    public int insert(Demo demo) {
        System.out.println("DemoService.insert | demo:"+demo.toString());
        return demoMapper.insert(demo);
    }
    @Master
    @Override
    public int save(Demo demo) {
        System.out.println("DemoService.save | demo:"+demo.toString());
        return demoMapper.insert(demo);
    }
    @Override
    public List<Demo> selectAll() {
        System.out.println("DemoService.selectAll");
        return demoMapper.selectAll();
    }
    @Transactional
    @Override
    public int update(Demo demo) {
        System.out.println("DemoService.update | demo:"+demo.toString());
        return demoMapper.update(demo);
    }

    @Override
    public Demo selectById(int id) {
        System.out.println("DemoService.selectById | id:"+id);
        return demoMapper.selectById(id);
    }

    @Transactional
    @Override
    public int delete(int id) {
        System.out.println("DemoService.delete | id:"+id);
        return demoMapper.delete(id);
    }

    @Override
    public List<Map> selectUserAndDemo() {
        System.out.println("DemoService.selectAll");
        return demoMapper.selectUserAndDemo();
    }


}
