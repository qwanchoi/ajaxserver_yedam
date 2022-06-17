package com.yedam.myserver.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;

@Component
@Aspect
public class AroundAdvice {
	
	@Around("LogAdvice.allpointcut()")
	public Object aroundLog(ProceedingJoinPoint pjp ) 
			  throws Throwable {
		//비지니스수행전 처리내용
		System.out.println("[around start]");
		StopWatch stopwatch = new StopWatch();
		stopwatch.start();		
		//비지니스 메서드 호출
		Object obj = pjp.proceed();		
		//비지니스수행후 처리내용
		stopwatch.stop();
		System.out.println("[around end]실행시간:"+stopwatch.getTotalTimeMillis());
		return obj;
	}
}
