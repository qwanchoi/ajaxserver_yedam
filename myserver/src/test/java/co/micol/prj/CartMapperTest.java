package co.micol.prj;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.micol.prj.cart.mapper.CartMapper;
import co.micol.prj.cart.vo.CartVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/*-context.xml")
public class CartMapperTest {
	
	@Autowired CartMapper mapper;
	
	//@Test
	public void cartDelete() {
		CartVO vo = new CartVO();
		vo.setNo("1");
		mapper.cartDelete(vo);
	}	
	
	@Test
	public void cartSelectList() {
		List<CartVO> list = mapper.cartSelectList();
		System.out.println(list.size());
	}
}
