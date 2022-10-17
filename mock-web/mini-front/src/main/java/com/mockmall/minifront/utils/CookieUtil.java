package com.mockmall.minifront.utils;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Objects;
import java.util.Optional;

/**
 * Cookie Util
 *
 * @author ccomma
 */
public class CookieUtil {

    private static final Logger LOGGER = LoggerFactory.getLogger(CookieUtil.class);

    private CookieUtil() {
    }


    /**
     * 得到 Cookie 的值, 不编码
     *
     * @param request    request
     * @param cookieName name
     * @return Cookie 值
     */
    public static String getCookieValue(HttpServletRequest request, String cookieName) {
        return getCookieValue(request, cookieName, false);
    }

    /**
     * 得到 Cookie 的值
     *
     * @param request    request
     * @param cookieName name
     * @param isDecoder  是否用 UTF-8 编码
     * @return Cookie 值
     */
    public static String getCookieValue(HttpServletRequest request, String cookieName, boolean isDecoder) {
        Cookie[] cookieList = request.getCookies();
        if (Objects.isNull(cookieList) || StringUtils.isBlank(cookieName)) {
            return null;
        }

        Optional<Cookie> cookieOptional = getCookieValueByName(cookieName, cookieList);
        if (!cookieOptional.isPresent()) {
            return null;
        }

        try {
            Cookie cookie = cookieOptional.get();
            return isDecoder ? URLDecoder.decode(cookie.getValue(), "UTF-8") : cookie.getValue();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 得到 Cookie 的值
     *
     * @param request      request
     * @param cookieName   name
     * @param encodeString 指定的编码
     * @return Cookie 值
     */
    public static String getCookieValue(HttpServletRequest request, String cookieName, String encodeString) {
        Cookie[] cookieList = request.getCookies();
        if (Objects.isNull(cookieList) || StringUtils.isBlank(cookieName)) {
            return null;
        }

        Optional<Cookie> cookieOptional = getCookieValueByName(cookieName, cookieList);
        if (!cookieOptional.isPresent()) {
            return null;
        }

        try {
            return URLDecoder.decode(cookieOptional.get().getValue(), encodeString);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }

    }

    /**
     * 设置 Cookie 的值 不设置生效时间默认浏览器关闭即失效，也不编码
     *
     * @param request     request
     * @param response    response
     * @param cookieName  name
     * @param cookieValue value
     */
    public static void setCookie(HttpServletRequest request, HttpServletResponse response, String cookieName, String cookieValue) {
        setCookie(request, response, cookieName, cookieValue, -1);
    }

    /**
     * 设置 Cookie 的值 在指定时间内生效，但不编码
     *
     * @param request      request
     * @param response     response
     * @param cookieName   name
     * @param cookieValue  value
     * @param cookieMaxAge cookie 生效的最大秒数
     */
    public static void setCookie(HttpServletRequest request, HttpServletResponse response, String cookieName, String cookieValue, int cookieMaxAge) {
        setCookie(request, response, cookieName, cookieValue, cookieMaxAge, false);
    }

    /**
     * 设置 Cookie 的值 不设置生效时间，但编码
     * 在服务器被创建，返回给客户端，并且保存客户端
     * 如果设置了 SETMAXAGE(int seconds)，会把 cookie 保存在客户端的硬盘中
     * 如果没有设置，会默认把 cookie 保存在浏览器的内存中
     * 一旦设置 setPath()：只能通过设置的路径才能获取到当前的 cookie 信息
     *
     * @param request     request
     * @param response    response
     * @param cookieName  name
     * @param cookieValue value
     * @param isEncode    是否编码
     */
    public static void setCookie(HttpServletRequest request, HttpServletResponse response, String cookieName, String cookieValue, boolean isEncode) {
        setCookie(request, response, cookieName, cookieValue, -1, isEncode);
    }

    /**
     * 设置Cookie的值 在指定时间内生效, 编码参数
     *
     * @param request      request
     * @param response     response
     * @param cookieName   name
     * @param cookieValue  value
     * @param cookieMaxAge cookie 生效的最大秒数
     * @param isEncode     是否编码
     */
    public static void setCookie(HttpServletRequest request, HttpServletResponse response, String cookieName, String cookieValue, int cookieMaxAge, boolean isEncode) {
        doSetCookie(request, response, cookieName, cookieValue, cookieMaxAge, isEncode);
    }

    /**
     * 设置Cookie的值 在指定时间内生效, 编码参数(指定编码)
     *
     * @param request      request
     * @param response     response
     * @param cookieName   name
     * @param cookieValue  value
     * @param cookieMaxAge cookie 生效的最大秒数
     * @param encodeString 编码
     */
    public static void setCookie(HttpServletRequest request, HttpServletResponse response, String cookieName, String cookieValue, int cookieMaxAge, String encodeString) {
        doSetCookie(request, response, cookieName, cookieValue, cookieMaxAge, encodeString);
    }

    /**
     * 删除 Cookie 带 cookie 域名
     *
     * @param request    request
     * @param response   response
     * @param cookieName name
     */
    public static void deleteCookie(HttpServletRequest request, HttpServletResponse response, String cookieName) {
        doSetCookie(request, response, cookieName, null, -1, false);
    }


    /**
     * 设置Cookie的值，并使其在指定时间内生效
     *
     * @param request      request
     * @param response     response
     * @param cookieName   name
     * @param cookieValue  value
     * @param cookieMaxAge cookie 生效的最大秒数
     * @param isEncode     是否编码
     */
    private static void doSetCookie(HttpServletRequest request, HttpServletResponse response, String cookieName, String cookieValue, int cookieMaxAge, boolean isEncode) {
        try {
            if (Objects.isNull(cookieValue)) {
                cookieValue = "";
            } else if (isEncode) {
                cookieValue = URLEncoder.encode(cookieValue, "utf-8");
            }

            Cookie cookie = getCookie(request, cookieName, cookieValue, cookieMaxAge);
            response.addCookie(cookie);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 设置 Cookie 的值，并使其在指定时间内生效
     *
     * @param request      request
     * @param response     response
     * @param cookieName   name
     * @param cookieValue  value
     * @param cookieMaxAge cookie生效的最大秒数
     * @param encodeString 编码
     */
    private static void doSetCookie(HttpServletRequest request, HttpServletResponse response, String cookieName, String cookieValue, int cookieMaxAge, String encodeString) {
        try {
            if (cookieValue == null) {
                cookieValue = "";
            } else {
                cookieValue = URLEncoder.encode(cookieValue, encodeString);
            }

            Cookie cookie = getCookie(request, cookieName, cookieValue, cookieMaxAge);
            response.addCookie(cookie);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 得到 cookie 的域名
     *
     * @return 域名
     */
    private static String getDomainName(HttpServletRequest request) {

        if (Objects.equals(request.getRequestURL().toString(), "")) {
            return StringUtils.EMPTY;
        }

        String serverName = request.getRequestURL().toString().toLowerCase().substring(7);
        int end = serverName.indexOf("/");
        serverName = serverName.substring(0, end);

        if (serverName.contains(":")) {
            String[] ary = serverName.split(":");
            serverName = ary[0];
        }

        final String[] domains = serverName.split("\\.");
        int len = domains.length;
        if (len > 3 && !isIp(serverName)) {
            // www.xxx.com.cn
            return "." + domains[len - 3] + "." + domains[len - 2] + "." + domains[len - 1];
        }

        if (len <= 3 && len > 1) {
            // xxx.com or xxx.cn
            return "." + domains[len - 2] + "." + domains[len - 1];
        }

        return serverName;
    }

    /**
     * 判断是否是一个IP
     *
     * @param ip ip
     * @return 是否正确
     */
    public static boolean isIp(String ip) {
        ip = trimSpaces(ip);
        if (!ip.matches("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}")) {
            return false;
        }

        String[] s = ip.split("\\.");
        if (Integer.parseInt(s[0]) >= 255) {
            return false;
        }

        if (Integer.parseInt(s[1]) >= 255) {
            return false;
        }

        if (Integer.parseInt(s[2]) >= 255) {
            return false;
        }

        return Integer.parseInt(s[3]) < 255;
    }

    /**
     * 去掉字符串前后所有的空格
     *
     * @param str 字符串
     * @return 处理后的字符串
     */
    private static String trimSpaces(String str) {
        while (str.startsWith(" ")) {
            str = str.substring(1).trim();
        }
        while (str.endsWith(" ")) {
            str = str.substring(0, str.length() - 1).trim();
        }
        return str;
    }

    private static Optional<Cookie> getCookieValueByName(String cookieName, Cookie[] cookieList) {
        return Arrays.stream(cookieList)
                .filter(cookie -> Objects.equals(cookie.getName(), cookieName))
                .findFirst();
    }

    private static Cookie getCookie(HttpServletRequest request, String cookieName, String cookieValue, int cookieMaxAge) {
        Cookie cookie = new Cookie(cookieName, cookieValue);
        if (cookieMaxAge > 0) {
            cookie.setMaxAge(cookieMaxAge);
        }

        // 设置域名的cookie
        if (Objects.nonNull(request)) {
            String domainName = getDomainName(request);
            LOGGER.info("========== domainName: {} ==========", domainName);
            if (!Objects.equals(domainName, "localhost")) {
                cookie.setDomain(domainName);
            }
        }

        cookie.setPath("/");

        return cookie;
    }

}