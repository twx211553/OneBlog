package com.zyd.blog.business.enums;

/**
 * @author yadong.zhang (yadong.zhang0415(a)gmail.com)
 * @version 1.0
 * @website https://www.zhyd.me
 * @date 2018/4/16 16:26
 * @since 1.0
 */
public enum FileUploadType {
    COMMON("elevenblog/"),
    QRCODE("elevenblog/qrcode/"),
    SIMPLE("elevenblog/article/"),
    COVER_IMAGE("elevenblog/cover/");

    private String path;

    FileUploadType(String path) {
        this.path = path;
    }

    public String getPath() {
        return path;
    }
}
