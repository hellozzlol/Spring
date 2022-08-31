package co.micol.prj.aop;

import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect //수행할클래스

public class AopAdvice {
	@Pointcut("execution(* co.micol.prj..*Impl.*(..))")
	public void allPoint() {}
	
	@Before("allPoint()")
	public void beforelog(JoinPoint jp) {
		Date date = new Date(); //java 8 부터 LocalDate객체를 권장
		String runMethod = jp.getSignature().getName();
		System.out.println(runMethod+" : 시작시간=="+date);
		System.out.println("메소드시작");
	}
	
	@After("allPoint()") //위버 = 포인트컷이 동작할 시점
	public void log(JoinPoint jp) { // advice = 수행하는 메소드
		Date date = new Date(); //java 8 부터 LocalDate객체를 권장
		String runMethod = jp.getSignature().getName();
		System.out.println(runMethod+" : 종료시간=="+date);
		System.out.println("메소드종료");
	}
	
}
