package com.mockmall.commonbase.result;

/**
 * 默认返回
 *
 * @author ccomma
 */
public class GeneralResult<T> implements Result<T> {

    private static final long serialVersionUID = 5354152983242818570L;

    private Boolean success;
    private String code;
    private String message;
    private T data;

    /**
     * 成功
     *
     * @return 成功
     * @author ccomma
     */
    public static <T> Result<T> success() {
        GeneralResult<T> result = new GeneralResult<>();
        result.success = true;
        return result;
    }

    /**
     * 成功带数据
     *
     * @param data 数据
     * @return 成功
     * @author ccomma
     */
    public static <T> Result<T> successWithData(T data) {
        GeneralResult<T> result = new GeneralResult<>();
        result.success = true;
        result.data = data;
        return result;
    }

    /**
     * 失败
     *
     * @param message 错误信息
     * @return 失败
     * @author ccomma
     */
    public static <T> Result<T> failure(String message) {
        return failureWithCode(ResultCode.SYSTEM_DEFAULT.getCode(), message);
    }

    /**
     * 失败
     *
     * @param code    错误码
     * @param message 错误信息
     * @return 失败
     * @author ccomma
     */
    public static <T> Result<T> failureWithCode(String code, String message) {
        GeneralResult<T> result = new GeneralResult<>();
        result.success = false;
        result.code = code;
        result.message = message;
        return result;
    }

    /**
     * 失败带数据
     *
     * @param data    数据
     * @param code    错误码
     * @param message 错误信息
     * @return 失败
     * @author ccomma
     */
    public static <T> Result<T> failureWithData(T data, String code, String message) {
        GeneralResult<T> result = new GeneralResult<>();
        result.success = false;
        result.code = code;
        result.message = message;
        result.data = data;
        return result;
    }

    /**
     * 失败
     *
     * @param source result
     * @return 失败
     * @author ccomma
     */
    public static <T> Result<T> failure(Result<?> source) {
        GeneralResult<T> result = new GeneralResult<>();
        result.success = false;
        result.code = source.getCode();
        result.message = source.getMessage();
        return result;
    }

    @Override
    public Boolean getSuccess() {
        return success;
    }

    @Override
    public void setSuccess(Boolean success) {
        this.success = success;
    }

    @Override
    public String getCode() {
        return code;
    }

    @Override
    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String getMessage() {
        return message;
    }

    @Override
    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public T getData() {
        return data;
    }

    @Override
    public void setData(T data) {
        this.data = data;
    }
}
