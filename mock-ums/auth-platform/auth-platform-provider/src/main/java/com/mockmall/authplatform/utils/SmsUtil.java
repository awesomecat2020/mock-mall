package com.mockmall.authplatform.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 短信 Util
 *
 * @author ccomma
 */
public class SmsUtil {

    private SmsUtil() {
    }

    /**
     * 校验手机号
     *
     * @return 是否正确
     */
    public static boolean checkPhoneNumber(String phone, String regex) {
        Pattern p = Pattern.compile(regex);
        Matcher matcher = p.matcher(phone);
        return matcher.matches();
    }

}
