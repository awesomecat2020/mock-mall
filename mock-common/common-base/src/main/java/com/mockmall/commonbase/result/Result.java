package com.mockmall.commonbase.result;

import java.io.Serializable;

/**
 * Result
 *
 * @author ccomma
 */
public interface Result<T> extends Serializable {

    /**
     * get success
     *
     * @return success
     * @author ccomma
     */
    Boolean getSuccess();

    /**
     * set success
     *
     * @param success success
     * @author ccomma
     */
    void setSuccess(Boolean success);

    /**
     * get code
     *
     * @return code
     * @author ccomma
     */
    String getCode();

    /**
     * set code
     *
     * @param code code
     * @author ccomma
     */
    void setCode(String code);

    /**
     * get message
     *
     * @return message
     * @author ccomma
     */
    String getMessage();

    /**
     * set message
     *
     * @param message message
     * @author ccomma
     */
    void setMessage(String message);

    /**
     * get data
     *
     * @return data
     * @author ccomma
     */
    T getData();

    /**
     * set data
     *
     * @param data data
     * @author ccomma
     */
    void setData(T data);


}
