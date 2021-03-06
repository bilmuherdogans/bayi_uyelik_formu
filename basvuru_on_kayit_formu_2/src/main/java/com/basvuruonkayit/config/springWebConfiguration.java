package com.basvuruonkayit.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages="com.basvuruonkayit")
@EnableWebMvc
public class springWebConfiguration {

	@Bean
	public ViewResolver viewResolver(){
	 InternalResourceViewResolver viewResolver=new  InternalResourceViewResolver("/jsps/", ".jsp");
	 return viewResolver;
	}
	
}
