package co.micol.prj.aop;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@Configuration //환경설정 파일을 나타낸다.
@EnableAspectJAutoProxy(proxyTargetClass = true)

public class AopConfig {
	@Bean
	public AopAdvice beforeAdvice() {
		return new AopAdvice();
	}
}
