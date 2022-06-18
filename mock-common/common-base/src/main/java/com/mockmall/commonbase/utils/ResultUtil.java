package com.mockmall.commonbase.utils;

import com.mockmall.commonbase.result.Result;

import java.util.Objects;

/**
 * Result util
 *
 * @author ccomma
 * @see com.mockmall.commonbase.result.Result
 * @see com.mockmall.commonbase.result.GeneralResult
 */
public class ResultUtil {

    private ResultUtil() {
    }

    /**
     * 是否成功
     *
     * @param result 返回结果
     * @return 成功：true 失败：false
     */
    public static boolean isSuccess(Result<?> result) {
        return Objects.nonNull(result) && result.getSuccess();
    }

    /**
     * 是否失败
     *
     * @param result 返回结果
     * @return 成功：true 失败：false
     */
    public static boolean isFailure(Result<?> result) {
        return !isSuccess(result);
    }

    /**
     * 是否有返回数据
     *
     * @param result 返回结果
     * @return 非空：true；空：false
     */
    public static boolean hasData(Result<?> result) {
        return isSuccess(result) && Objects.nonNull(result.getData());
    }

    /**
     * 返回数据是否为空
     *
     * @param result 返回结果
     * @return 空：true；非空：false
     */
    public static boolean hasNotData(Result<?> result) {
        return !hasData(result);
    }


}
