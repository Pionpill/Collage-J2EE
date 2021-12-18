/*
 * @Description: 登录监听:禁止未登录访问其他界面
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-19 00:42:43
 * @LastEditTime: 2021-12-19 01:05:37
 */
package library.backend.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import library.backend.entity.User;

// 判断是否存在 user 属性，若不存在，则跳回 /login
public class LoginInterceptor  implements HandlerInterceptor{
    
    /**
     * @Author: Pionpill
     * @param {HttpServletRequest} http 请求
     * @param {HttpServletResponse} http 响应
     * @param {Object} o
     * @return 是否已登录(检测到用户)
     * @description: 检查是否有用户存在
     */
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o)
            throws Exception {
        HttpSession session = httpServletRequest.getSession();
        String contextPath = session.getServletContext().getContextPath();
        String[] requireAuthPages = new String[] {
                "index",
        };

        String uri = httpServletRequest.getRequestURI();

        uri = StringUtils.remove(uri, contextPath + "/");
        String page = uri;

        if (begingWith(page, requireAuthPages)) {
            User user = (User) session.getAttribute("user");
            if (user == null) {
                httpServletResponse.sendRedirect("login");
                return false;
            }
        }
        return true;
    }
    
    /**
     * @Author: Pionpill
     * @param {String} 当前页面
     * @param {String[]} 路劲列表
     * @return {*}
     * @description: 
     */
    private boolean begingWith(String page, String[] requiredAuthPages) {
        boolean result = false;
        for (String requiredAuthPage : requiredAuthPages) {
            if(StringUtils.startsWith(page, requiredAuthPage)) {
                result = true;
                break;
            }
        }
        return result;
    }
}