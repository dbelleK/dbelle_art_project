package com.dbellart.web.security;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.context.SecurityContextPersistenceFilter;
import org.springframework.web.filter.CharacterEncodingFilter;

//import com.mysql.cj.protocol.AuthenticationProvider;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {


    @Autowired
    @Qualifier("customAuthenticationProvider")
    private AuthenticationProvider authenticationProvider;

    @Autowired
    @Qualifier("userService")
    UserDetailsService userDetailsService;

    @Autowired
    private SessionRegistry sessionRegistry;

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider);
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {

        //CustomLoginSuccessHandler : �α��� ���� ���� �� ����Ǵ� Ŭ�����̴ϱ�
        //loginPro,login ���� �� �ڵ�ϱ� �ϴ� �� ��ũ�� �����Ѵ�
        CustomLoginSuccessHandler handler = new CustomLoginSuccessHandler();
        handler.addIgnoreUrl("/loginProcess");
        handler.addIgnoreUrl("/top/login"); //.successHandler(handler)
                    
        http.addFilterBefore(characterEncodingFilter(), SecurityContextPersistenceFilter.class)
                .formLogin() // .formLogin() - Form �α��� ���� ����� �۵���
                .loginPage("/top/login") // loginPage - �α��� ������ ��� ����
                .usernameParameter("email") // ���̵� �Ķ���͸� ����
                .passwordParameter("pw") //�н����� �Ķ���͸� ����
                .loginProcessingUrl("/loginProcess")// loginProcessingUrl - POST�� �α��� ������ ���� �� ���
//                .defaultSuccessUrl("/home") // ������ ������ ������
                .failureHandler(new CustomLoginFailureHandler())
                .successHandler(handler)

                .and().cors()

                .and()
                .authorizeRequests() //authorizeRequests() - ��ť��Ƽ ó���� HttpServletRequest�� �̿��Ѵٴ� ���� �ǹ�,��û�� ���� ������ ������ �� �ִ�.
//                .antMatchers("/h2-console/*").permitAll()//antMatchers() Ư���� ��θ� ���� //permitAll()�� ��� ����ڰ� ������ �� �ִٴ� ���� �ǹ�
                .antMatchers("/").permitAll()
                .antMatchers("/error").permitAll()
                .antMatchers("/resources/**").permitAll()
//                .antMatchers("/sign/**").permitAll()
                .antMatchers("/joinpPro").permitAll() //path�ּ�, form �±� action
                .antMatchers("/loginProcess").permitAll()
//                .antMatchers("/sign/**").hasAnyAuthority("ROLE_USER")
                .antMatchers("/top/**").hasAnyAuthority("ROLE_USER") //.hasAuthority() or hasAnyAuthority() : Ư�� ������ ������ ����ڸ� ������ �� �ִ�.
//                .antMatchers("/service/copy/**").hasAnyAuthority("ROLE_USER")

                .and()
                .logout().logoutUrl("/logout")
                .invalidateHttpSession(true)
                .logoutSuccessUrl("/")

//                .and()
//                .csrf().ignoringAntMatchers("")

                .and()
                .exceptionHandling()
                .accessDeniedHandler(new CustomAccessDeniedHandler()) //�α��� �� ���� ��Ÿ�� �� �����ϴ� ȭ�� ��� Ȥ�� ���ܹ߻���

                .and()
                .rememberMe() //����� ����� ���� �α����� ����ڸ� ������ �� ����
                .key("key") //��� ��������� �� ����ϴ� Ű
                .tokenValiditySeconds(1000)
//                    .userDetailsService(userService)

                .and()
                .sessionManagement()  //���ǰ��� Ŭ����
                .sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED) //���� ��å�� �����ȰŸ� ���ǽ�Ų��
                .sessionFixation().newSession()//���ο� ������ ������Ų��
                .maximumSessions(1)//����1��
                .expiredUrl("/") //���� ����Ǹ� ��Ʈ�� ����
                .maxSessionsPreventsLogin(false) //false�α׾ƿ� true �ź�-�α��ξȵ� (�����Ѱ��ε� �������� ���)
                .sessionRegistry(sessionRegistry); //���� ����
    }

    public CharacterEncodingFilter characterEncodingFilter() {
        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
        characterEncodingFilter.setEncoding("UTF-8");
        characterEncodingFilter.setForceEncoding(true);
        return characterEncodingFilter;
    }
}