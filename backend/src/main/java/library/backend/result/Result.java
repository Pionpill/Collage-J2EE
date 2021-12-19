/*
 * @Description: your project
 * @version: 1.0
 * @Author: Pionpill
 * @LastEditors: Pionpill
 * @Date: 2021-12-18 21:35:41
 * @LastEditTime: 2021-12-19 01:09:42
 */
package library.backend.result;

public class Result {
    // 响应码，不同响应码有规定的不同意义
    private int code;

    public Result(int code) {
        this.code = code;
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
