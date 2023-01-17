package tn.enig.config;

import javax.activation.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;

@Configuration
@EnableWebMvcSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

 @Autowired
 javax.sql.DataSource dataSource;

 @Autowired
 public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {

   auth.jdbcAuthentication().dataSource(dataSource)
  .usersByUsernameQuery(
   "select username,password, enabled from users where username=?")
  .authoritiesByUsernameQuery(
   "select username, role from user_roles where username=?");
 } 

 @Override
 protected void configure(HttpSecurity http) throws Exception {

   http.authorizeRequests()
  .antMatchers("/delete**","/addMat**","/addMateriel**").access("hasRole('ROLE_ADMIN')")  
  .antMatchers("/list**").access("hasRole('ROLE_USER')")
  .antMatchers("/listdep").permitAll()
  .anyRequest().permitAll()
  .and()
    .formLogin()
    .usernameParameter("username").passwordParameter("password")
   .and()
   .exceptionHandling().accessDeniedPage("/vues/403.jsp")
  .and()
    .csrf();
 }

}
