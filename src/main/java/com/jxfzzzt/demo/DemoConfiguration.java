package com.jxfzzzt.demo;

import com.jxfzzzt.demo.hello.HelloService;
import com.jxfzzzt.demo.hello.SimpleHelloService;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration(proxyBeanMethods = false)
class DemoConfiguration {

	@Bean
	HelloService helloService() {
		return new SimpleHelloService();
	}

}
