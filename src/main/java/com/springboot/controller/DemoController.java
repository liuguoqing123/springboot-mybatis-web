package com.springboot.controller;

import java.util.List;
import com.springboot.bean.Demo;
import com.springboot.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.github.pagehelper.PageHelper;

@RestController
public class DemoController {
	@Autowired
	DemoService demoService;
	
	@GetMapping("/hello")
	public String hello(){
		return "<h1>Hello World !!!</h1>";
	}

	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public Demo insert(@RequestBody Demo demo){
		int rs = demoService.insert(demo);
		System.out.println("+++++++++++++++++++:"+rs);
		return demo;
	}

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public Demo save(@RequestBody Demo demo){
		int rs = demoService.save(demo);  
		System.out.println("+++++++++++++++++++:"+rs);
		return demo;
	}
	
	@GetMapping("/delete")
	public int delete(int id){
		return demoService.delete(id);  
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public Demo update(@RequestBody Demo demo){
		demoService.update(demo);  
		return demo;
	}

	
	@GetMapping("/selectAll")
	public List<Demo> selectAll(){
		return demoService.selectAll();
	}
	
	@GetMapping("/selectById")
	public Demo selectById(int id){
		return demoService.selectById(id);
	}
	

	

	
}
