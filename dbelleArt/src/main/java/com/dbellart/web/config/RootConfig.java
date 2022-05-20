package com.dbellart.web.config;

import org.springframework.context.annotation.Configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.core.env.Environment;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan(basePackages = {"com.dbellart.web"}, excludeFilters = {@Filter(type = FilterType.ANNOTATION, value = EnableWebMvc.class)})
@EnableTransactionManagement(proxyTargetClass = true)
public class RootConfig {

    @Autowired
    private Environment env;
}

