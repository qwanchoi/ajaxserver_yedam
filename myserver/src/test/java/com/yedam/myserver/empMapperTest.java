package com.yedam.myserver;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yedam.myserver.emp.mapper.EmployeeMapper;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/*-context.xml")
public class empMapperTest {
	
	@Autowired EmployeeMapper mapper;
	
	@Test
	public void test() {
		List<Map> list = mapper.empStat();
		System.out.println(list);
	}
}
