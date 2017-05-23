package main.java.filters;

import main.java.forms.LoginForm;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor{

    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        // Avoid a redirect loop for some urls
        String contextPath = request.getSession().getServletContext().getContextPath();
        System.out.println(request.getRequestURI());
        /* On Domain */
        if(!contextPath.equals("")){
            if(!request.getRequestURI().startsWith(contextPath+"/login") &&
                    !request.getRequestURI().equals(contextPath+"/user/add") &&
                    !request.getRequestURI().startsWith(contextPath+"/meteo") &&
                    // Authorize user to access resources if not connected
                    !request.getRequestURI().startsWith(contextPath+"/resources")) {
                LoginForm userData = (LoginForm) request.getSession().getAttribute("LOGGEDIN_USER");
                // If invite trys index, let him in
                if (userData == null) {
                    response.sendRedirect(contextPath + "/login");
                    return false;
                }
            }
            return true;
        }
        // On localhost
        else{
            if(!request.getRequestURI().startsWith(contextPath+"/login") &&
                    !request.getRequestURI().equals(contextPath+"/user/add") &&
                    !request.getRequestURI().startsWith(contextPath+"/meteo") &&
                    !request.getRequestURI().startsWith("/index") &&
                            // Authorize user to access resources if not connected
                            !request.getRequestURI().startsWith("/resources")) {
                LoginForm userData = (LoginForm) request.getSession().getAttribute("LOGGEDIN_USER");
                // If invite trys index, let him in
                if (userData == null) {
                    response.sendRedirect("/login");
                    return false;
                }
            }
            return true;
        }
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
    //override postHandle() and afterCompletion()
}

