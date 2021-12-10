package co.micol.prj;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.micol.prj.todo.mapper.TodoMapper;
import co.micol.prj.todo.vo.TodoVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/*-context.xml")

public class TodoMapperTest {
	
	@Autowired TodoMapper mapper;
	
	@Test
	public void todoSelectList() {
		System.out.println(mapper.todoSelectList() );
	}
	
	
	//@Test
	public void dotoInsert() {
		TodoVO vo = new TodoVO();
		vo.setContents("aaaa");
		mapper.todoInsert(vo);
		System.out.println(vo); 
	}
}
