package com.company.util;

import java.text.SimpleDateFormat;
import java.time.*;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
    //判断选择的日期是否是本周
    public static boolean isThisWeek(long time)
    {
        Calendar calendar = Calendar.getInstance();
        int currentWeek = calendar.get(Calendar.WEEK_OF_YEAR);
        calendar.setTime(new Date(time));
        int paramWeek = calendar.get(Calendar.WEEK_OF_YEAR);
        if(paramWeek==currentWeek){
            return true;
        }
        return false;
    }
    //判断选择的日期是否是今天
    public static boolean isToday(long time)
    {
        return isThisTime(time,"yyyy-MM-dd");
    }
    //判断选择的日期是否是本月
    public static boolean isThisMonth(long time)
    {
        return isThisTime(time,"yyyy-MM");
    }
    private static boolean isThisTime(long time,String pattern) {
        Date date = new Date(time);
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        String param = sdf.format(date);//参数时间
        String now = sdf.format(new Date());//当前时间
        if(param.equals(now)){
            return true;
        }
        return false;
    }

    /**
     * 获取一个月开始时间
     * @param year
     * @param month
     * @return
     */
    public static Date getBeginTime(int year, int month) {
        YearMonth yearMonth = YearMonth.of(year, month);
        LocalDate localDate = yearMonth.atDay(1);
        LocalDateTime startOfDay = localDate.atStartOfDay();
        ZonedDateTime zonedDateTime = startOfDay.atZone(ZoneId.of("Asia/Shanghai"));

        return Date.from(zonedDateTime.toInstant());
    }

    /**
     * 获取一个月结束时间
     * @param year
     * @param month
     * @return
     */
    public static Date getEndTime(int year, int month) {
        YearMonth yearMonth = YearMonth.of(year, month);
        LocalDate endOfMonth = yearMonth.atEndOfMonth();
        LocalDateTime localDateTime = endOfMonth.atTime(23, 59, 59, 999);
        ZonedDateTime zonedDateTime = localDateTime.atZone(ZoneId.of("Asia/Shanghai"));
        return Date.from(zonedDateTime.toInstant());
    }

    /**
     * 获取指定时间的年份
     * @param date
     * @return
     */
    public static int getYearOfDate(Date date){
        String[] strNow = new SimpleDateFormat("yyyy-MM-dd").format(date).toString().split("-");
        return Integer.parseInt(strNow[0]);
    }
    /**
     * 获取指定时间的月份
     * @param date
     * @return
     */
    public static int getMouthOfDate(Date date){
        String[] strNow = new SimpleDateFormat("yyyy-MM-dd").format(date).toString().split("-");
        return Integer.parseInt(strNow[1]);
    }

    /**
     * 获取指定时间的日期
     * @param date
     * @return
     */
    public static int getDayOfDate(Date date){
        String[] strNow = new SimpleDateFormat("yyyy-MM-dd").format(date).toString().split("-");
        return Integer.parseInt(strNow[2]);
    }

}
