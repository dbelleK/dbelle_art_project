package com.dbellart.web.security;


import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.context.SecurityContextPersistenceFilter;
import org.springframework.web.filter.CharacterEncodingFilter;

import com.mysql.cj.protocol.AuthenticationProvider;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

//	@Autowired
//    @Qualifier("customAuthenticationProvider")
//    private AuthenticationProvider authenticationProvider;
   
	 @Autowired
	 private SessionRegistry sessionRegistry;
	

    // SessionRegistry Ŭ����(�⺻)
    //((����: �����ð����� ���� ����ڷκ��� ������ �Ϸ��� �䱸�� �ϳ��� ���� �� ���¸� �����ϰ� ������Ű�� ���
    // �����ð��� �湮�ڰ� �� �������� ���� �� ������ ������ �������κ��� �� �������� �����Ͽ� ������ ������ ����
    // ,�� �湮�ڰ� �� ������ ������ �ִ� ���¸� �ϳ��� ������ ���� �װ��� �����̶�� ��))
    
    //������� ���������� �� ���������� ������ �ִ� ���ǵ�
    //(�� ����� ����ڰ� ���� ������ �����ϸ鼭 ���� �� �ִ�
    //�������� �޸��ѵ� ���� �α��� �ϰ� �Ǹ� �ϳ��� ����ڰ� 2���� ���� �ٸ� ���� ID�� ���� ��)
    //�ϳ��� �������� �������� â�� ��� ���� ����� = ��������
    

    //AuthenticationManagerBuilder(�⺻����)�� ���� ���� ��ü�� ���� �� �ֵ��� ����
    //�α����� ���ؼ��� SecurityConfig Ŭ������ AuthenticationManagerBuilder�� �����ؼ� ������ ���� ó��
    //���� �Ŵ������� ����/�ΰ��� ���� UserDetailsService�� ���ؼ� �ʿ��� �������� �����ɴϴ�.
    //UserDetails�� ������� ���� + ���� �������� ����

//	  @Autowired
//	  public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//	     auth.authenticationProvider(authenticationProvider);
//	  }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        //CustomLoginSuccessHandler : �α��� ���� ���� �� ����Ǵ� Ŭ�����̴ϱ�
        //loginPro,login ���� �� �ڵ�ϱ� �ϴ� �� ��ũ�� �����Ѵ�
        CustomLoginSuccessHandler handler = new CustomLoginSuccessHandler();
        handler.addIgnoreUrl("/loginPro");
        handler.addIgnoreUrl("/login"); //.successHandler(handler)

        http.addFilterBefore(characterEncodingFilter(), SecurityContextPersistenceFilter.class)
                .formLogin().loginPage("/login")
                .usernameParameter("email")
                .passwordParameter("pw")
                .loginProcessingUrl("/loginPro")
                .failureHandler(new CustomLoginFailureHandler())
                .successHandler(handler)

                .and().cors()

                .and()
                .authorizeRequests() //authorizeRequests()�� ��ť��Ƽ ó���� HttpServletRequest�� �̿��Ѵٴ� ���� �ǹ�,��û�� ���� ������ ������ �� �ִ�.
//                .antMatchers("/h2-console/*").permitAll()//antMatchers() Ư���� ��θ� ���� //permitAll()�� ��� ����ڰ� ������ �� �ִٴ� ���� �ǹ�
                .antMatchers("/").permitAll()
                .antMatchers("/error").permitAll()
                .antMatchers("/resources/**").permitAll()
//                .antMatchers("/sign/**").permitAll()
                .antMatchers("/joinpPro").permitAll() //path�ּ�, form �±� action
                .antMatchers("/loginPro").permitAll()
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