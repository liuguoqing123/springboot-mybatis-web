package com.springboot.controller;

import java.util.List;
import java.util.Map;

import com.springboot.bean.Demo;
import com.springboot.service.DemoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
public class DemoController {
	@Autowired
	DemoService demoService;
	
	@GetMapping("/hello")
	public Object hello(HttpServletRequest request, HttpServletResponse response){
		String token = request.getHeader("token");
		System.out.println(request.getRequestURI());
		if (StringUtils.isEmpty(token) || null == token ){
			//处理地址栏中的token
			response.setStatus(HttpStatus.UNAUTHORIZED.value());
			return response.getStatus();
		}

		token = request.getParameter("token");
		return "<h1>Hello World !!!</h1> token:"+token;
			//401没有认证权限

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

	@GetMapping("/selectUserAndDemo")
	public List<Map> selectUserAndDemo(){
		return demoService.selectUserAndDemo();
	}
	

	

	
}
