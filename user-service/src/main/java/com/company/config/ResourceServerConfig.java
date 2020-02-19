package com.company.config;

        import lombok.extern.slf4j.Slf4j;
        import org.springframework.context.annotation.Configuration;
        import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
        import org.springframework.security.config.annotation.web.builders.HttpSecurity;
        import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
        import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;

        import javax.servlet.http.HttpServletResponse;

/**
 * @author 黄炽鑫
 * @date 2019.9.21
 */
@Slf4j
@Configuration
@EnableResourceServer
@EnableGlobalMethodSecurity(prePostEnabled=true)
public class ResourceServerConfig extends ResourceServerConfigurerAdapter {

    @Override
    public void configure(HttpSecurity http) throws Exception {
        log.info("资源请求服务器:{}", http);
        http
                .csrf().disable()
                .exceptionHandling()
                .authenticationEntryPoint((request, response, authException) -> response.sendError(HttpServletResponse.SC_UNAUTHORIZED))
//                .and()
//                .requestMatchers().antMatchers("/api2/**")
                .and()
                .authorizeRequests()
                .antMatchers("/user/register").permitAll()
                .antMatchers("/user/getUser").permitAll()
                .antMatchers("/user/init").permitAll()
                .antMatchers("/user/isExistUsername").permitAll()
                .antMatchers("/user/isExistPhone").permitAll()
                .antMatchers("/user/isExistEmail").permitAll()
                .antMatchers("/user/verificationCode").permitAll()
                .antMatchers("/user/updatePassByEmail").permitAll()

                .antMatchers("/user/**").authenticated()
                .and()
                .httpBasic();
    }
}
