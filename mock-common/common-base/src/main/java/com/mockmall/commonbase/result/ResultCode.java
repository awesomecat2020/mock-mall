package com.mockmall.commonbase.result;

/**
 * 返回码
 *
 * @author ccomma
 */
public enum ResultCode {

    /**
     * 服务端异常
     */
    SYSTEM_DEFAULT("SYSTEM_DEFAULT_ERROR_1000", "服务端异常"),

    /**
     * 系统异常
     */
    SYSTEM("SYSTEM_ERROR_1001", "系统异常"),

    /**
     * 服务调用异常
     */
    DUBBO_REMOTE("DUBBO_REMOTE_ERROR_1002", "服务调用异常"),

    /**
     * 保存数据失败
     */
    SAVE_DATA("SAVE_DATA_1003", "保存数据失败"),

    /**
     * 修改数据失败
     */
    UPDATE_DATA("UPDATE_DATA_1004", "修改数据失败"),

    /**
     * 对象不能为空
     */
    OBJECT_NULL("OBJECT_NULL_1005", "对象不能为空"),

    /**
     * 属性不能为空
     */
    FIELD_NULL("FIELD_NULL_1006", "属性不能为空"),

    /**
     * 记录不存在
     */
    RECORD_NOT_EXIST("RECORD_NOT_EXIST_1007", "记录不存在");

    ResultCode(String code, String message) {
        this.code = code;
        this.message = message;
    }

    private final String code;
    private final String message;

    public String getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }
}
