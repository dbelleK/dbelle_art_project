//package com.dbellart.web.config.data;
//
//import org.apache.commons.dbcp.BasicDataSource;
//import org.apache.ibatis.session.SqlSessionFactory;
//import org.mybatis.spring.SqlSessionTemplate;
//import org.mybatis.spring.annotation.MapperScan;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.PropertySource;
//import org.springframework.core.env.Environment;
//import org.springframework.transaction.PlatformTransactionManager;
//
//@Configuration
//@PropertySource("classpath:config/db.properties")
//@MapperScan(value = "com.dbellart.web", sqlSessionTemplateRef = "mainSqlSessionTemplate")
//public class MainDataConfig extends DataConfig{
//
//    @Bean(destroyMethod = "close")
//    public BasicDataSource mainDataSource() {
//        BasicDataSource basicDataSource = new BasicDataSource();
//        basicDataSource.setDriverClassName("oracle.jdbc.OracleDriver");
//        basicDataSource.setUrl("jdbc:oracle:thin:@localhost:1521:orcl");
//        basicDataSource.setUsername("id");
//        basicDataSource.setPassword("password");
//
//
//        basicDataSource.setInitialSize(10);
//        basicDataSource.setMaxActive(30);
//        basicDataSource.setMaxIdle(30);
//        basicDataSource.setMinIdle(10);
//        basicDataSource.setTestWhileIdle(true);
//        basicDataSource.setValidationQuery("SELECT 1");
//
//        return basicDataSource;
//    }
//
//    @Bean
//    public SqlSessionFactory mainSqlSessionFactory(BasicDataSource mainDataSource) throws Exception {
//        return super.sqlSessionFactory(mainDataSource);
//    }
//
//    @Bean
//    public SqlSessionTemplate mainSqlSessionTemplate(SqlSessionFactory mainSqlSessionFactory) {
//        return super.sqlSessionTemplate(mainSqlSessionFactory);
//    }
//
//    @Bean
//    public PlatformTransactionManager mainTxManager(BasicDataSource mainDataSource) {
//        return super.txManager(mainDataSource);
//    }
//}
