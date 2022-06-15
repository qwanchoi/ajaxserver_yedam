package com.yedam.myserver;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.yedam.myserver.emp.vo.Employee;

@RestController
public class AjaxController {
	
	@GetMapping("req")
	public String reqGet() {
		return "get-test";
	}
	
	@PostMapping("req")
	@ResponseBody // 자바객체를 json String 으로 변환
	public String reqPost(@RequestBody Employee vo) throws InterruptedException {
		// @RequestBody -> json String 파싱해서 vo 객체 변화
		System.out.println(vo.getFirst_name());
		return "post-test";
	}
}
