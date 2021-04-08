package com.jeethink.project.system.utils;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DataTimestamp {
    /**
     * 开始时间处理
     *
     * @param beginTime
     * @return
     */
    public static String dataBeginTime(Object beginTime) {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
        Date parse = null;
        try {
            parse = sf.parse((String) beginTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sd.format(parse);
        return format;
    }

    public static String dataEndTime(Object endTime) {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
        Date parse = null;
        try {
            parse = sf.parse((String) endTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //处理最大值
        Calendar instance = Calendar.getInstance();
        instance.setTime(parse);
        instance.add(Calendar.DAY_OF_MONTH, 1);
        /* instance.get(Calendar.DATE);*/
        Date time = instance.getTime();
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = sd.format(time);
        return format;
    }
}
