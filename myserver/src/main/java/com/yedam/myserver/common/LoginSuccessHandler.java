package com.yedam.myserver.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.yedam.myserver.HomeController;
import com.yedam.myserver.users.mapper.UserMapper;
import com.yedam.myserver.users.vo.UserVO;

// 로그인처리 -> handler(추가작업, session) -> 페이지 포워드
@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler{
	@Autowired
	UserMapper map;
	private static final Logger logger = LoggerFactory.getLogger(LoginSuccessHandler.class);
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res,
			Authentication authentication) throws IOException, ServletException {
		String name = authentication.getName(); // 사용자ID
		logger.info("handler=====" + name);
		UserVO user = new UserVO();
		user.setId(name);
		user = map.findById(user);
		logger.info("get user...?" + user.getName());
		res.sendRedirect("top.jsp");
	}
}
