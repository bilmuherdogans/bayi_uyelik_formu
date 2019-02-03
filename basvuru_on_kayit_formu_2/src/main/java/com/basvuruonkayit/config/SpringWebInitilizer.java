package com.basvuruonkayit.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class SpringWebInitilizer implements WebApplicationInitializer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		AnnotationConfigWebApplicationContext container=new AnnotationConfigWebApplicationContext();
		container.register(springWebConfiguration.class);
		container.setServletContext(servletContext);
		Dynamic servlet=servletContext.addServlet("spring", new DispatcherServlet(container));
		servlet.addMapping("/");
		servlet.setLoadOnStartup(3);
		
		
	}
	

}
