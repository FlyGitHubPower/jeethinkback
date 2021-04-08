package com.jeethink.common.exception.file;

import com.jeethink.common.exception.BaseException;

/**
 * 文件信息异常类
 * 
 @author  官方网址
 */
public class FileException extends BaseException
{
    private static final long serialVersionUID = 1L;

    public FileException(String code, Object[] args)
    {
        super("file", code, args, null);
    }

}
