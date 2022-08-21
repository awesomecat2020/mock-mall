package com.mockmall.user.enums;

/**
 * 性别
 *
 * @author ccomma
 */
public enum SexEnum {
    /**
     * 男
     */
    MALE(0),
    /**
     * 女
     */
    FEMALE(1),
    /**
     * 保密
     */
    SECRET(2)
    ;

    private final int code;

    SexEnum(int code) {
        this.code = code;
    }

    public int getCode() {
        return code;
    }
}
