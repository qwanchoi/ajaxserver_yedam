package com.yedam.myserver.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LogAdvice {
	// 리턴타임 패키지경로.클래스명.메소드명(매개변수)
	@Pointcut("execution(* com.yedam..*Impl.*(..))")
	public void allpointcut() {}
	
	@Before("allpointcut()")
	public void printLog(JoinPoint jp) {
		String name = jp.getSignature().getName();
		String arg = jp.getArgs() != null && jp.getArgs().length > 0 ? jp.getArgs()[0].toString() : "";
		System.out.println("[before] 로그 출력" + name + ":" + arg );
	}
	
}
