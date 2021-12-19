/*
 * @Description: 将拦截器部署在前端
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 10:59:52
 * @LastEditTime: 2021-12-19 12:04:07
 */
package library.backend.config;

import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import library.backend.interceptor.LoginInterceptor;

/*
 * @Description: 如果不是 index 页面，触发 LoginInterceptor
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 10:59:52
 * @LastEditTime: 2021-12-19 11:59:53
 */

 @SpringBootConfiguration
public class WebConfigurer implements WebMvcConfigurer {

    @Bean
    public LoginInterceptor getLoginIntercepter() {
        return new LoginInterceptor();
    }

    // 拦截器，除了 index 网页
    @Override
    public void addInterceptors(InterceptorRegistry registry){
        registry.addInterceptor(getLoginIntercepter()).addPathPatterns("/**").excludePathPatterns("/index.html");
    }
}