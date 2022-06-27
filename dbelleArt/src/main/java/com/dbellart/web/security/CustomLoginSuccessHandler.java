package com.dbellart.web.security;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static com.dbellart.web.security.CustomLoginSuccessHandler.RedirectUrlType.DEFAULT;
import static com.dbellart.web.security.CustomLoginSuccessHandler.RedirectUrlType.REFERER;
import static com.dbellart.web.security.CustomLoginSuccessHandler.RedirectUrlType.SESSION;


public class CustomLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    public enum RedirectUrlType {DEFAULT, SESSION, REFERER}

    public final Integer SESSION_TIMEOUT_IN_SECONDS = 30 * 60;

    private RequestCache requestCache = new HttpSessionRequestCache();

    private boolean useReferer = true;
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
    private List<String> ignoreUrls = new ArrayList<>();

    public boolean isUseReferer() {
        return useReferer;
    }

    public void setUseReferer(boolean useReferer) {
        this.useReferer = useReferer;
    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
        request.getSession().setMaxInactiveInterval(SESSION_TIMEOUT_IN_SECONDS);

        clearAuthenticationAttributes(request);

        RedirectUrlType intRedirectStrategy = decideRedirectStrategy(request, response);

        //user : ���� ��ü , �α��� �������ִ� ��,  model.addAttribute("sessionUser",sessionUser); ���ذͰ� ����, user.~���ָ� �α����� �Ǿ����� �ȵǾ����� Ȯ��
        HttpSession session = request.getSession();
        session.setAttribute("user", ((SpringUser)authentication.getDetails()).getUser());

        switch(intRedirectStrategy){
            case SESSION:
                useSessionUrl(request, response);
                break;
            case REFERER:
                useRefererUrl(request, response);
                break;
            default:
                useDefaultUrl(request, response);
        }
    }

    /***
     * spring security�� session�� ������ url �� redirect url�� ���
     * @param request
     * @param response
     * @throws IOException
     */
    private void useSessionUrl(HttpServletRequest request, HttpServletResponse response) throws IOException{
        SavedRequest savedRequest = requestCache.getRequest(request, response);
        String redirectUrl = savedRequest.getRedirectUrl();
        redirectStrategy.sendRedirect(request, response, urlContainIgnoreUrl(redirectUrl) ? getDefaultTargetUrl() : redirectUrl);
    }

    /***
     * request referer�� ����Ǿ� �ִ� url �� redirect url�� ���
     * @param request
     * @param response
     * @throws IOException
     */
    private void useRefererUrl(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String redirectUrl = request.getHeader("REFERER");
        redirectStrategy.sendRedirect(request, response, urlContainIgnoreUrl(redirectUrl) ? getDefaultTargetUrl() : redirectUrl);
    }

    /***
     * spring security�� ������ url�� redirect url�� ���
     * @param request
     * @param response
     * @throws IOException
     */
    private void useDefaultUrl(HttpServletRequest request, HttpServletResponse response) throws IOException{
        redirectStrategy.sendRedirect(request, response, getDefaultTargetUrl());
    }

    public void addIgnoreUrl(String url){
        this.ignoreUrls.add(url);
    }

    private boolean urlContainIgnoreUrl(String redirectUrl){
        if(null != this.ignoreUrls){
            for(String ignoreUrl : this.ignoreUrls){
                if(redirectUrl.contains(ignoreUrl)){
                    return true;
                }
            }
        }else{
            return false;
        }

        return false;
    }

    /***
     * ���� ������ � type�� URL�� recirect ���� ����
     * @param request
     * @param response
     * @return
     */
    private RedirectUrlType decideRedirectStrategy(HttpServletRequest request, HttpServletResponse response){

        SavedRequest savedRequest = requestCache.getRequest(request, response);

        if(savedRequest != null){
            return SESSION;
        }else{
            String refererUrl = request.getHeader("REFERER");
            if(useReferer && StringUtils.hasText(refererUrl)){
                return REFERER;
            }else{
                return DEFAULT;
            }
        }
    }
}
