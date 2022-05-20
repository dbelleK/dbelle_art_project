package com.dbellart.web.config.data;


import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

public class DataConfig {

    @Autowired
    Environment env;

    public SqlSessionFactory sqlSessionFactory(BasicDataSource backupDataSource) throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(backupDataSource);
        PathMatchingResourcePatternResolver patternResolver = new PathMatchingResourcePatternResolver();
        sqlSessionFactoryBean.setConfigLocation(patternResolver.getResource("classpath:mybatis-config.xml"));
        sqlSessionFactoryBean.setTypeAliasesPackage("com.dbellart.web");
        return sqlSessionFactoryBean.getObject();
    }

    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory mainSqlSessionFactory) {
        SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(mainSqlSessionFactory);
        return sqlSessionTemplate;
    }


    public PlatformTransactionManager txManager(BasicDataSource mainDataSource) {
        return new DataSourceTransactionManager(mainDataSource);
    }
}
