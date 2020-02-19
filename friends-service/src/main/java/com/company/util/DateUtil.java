package com.company.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {

    public static String formatDate(String dateStr) throws ParseException {
        Calendar date = Calendar.getInstance();
        int year = date.get(Calendar.YEAR);
        int mouth = date.get(Calendar.MONTH)+1;
        int day = date.get(Calendar.DAY_OF_MONTH);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yy-MM-dd HH:mm");
        Date date1 = dateFormat.parse(dateStr);
        date.setTime(date1);
        int year1 = date.get(Calendar.YEAR);
        int mouth1 = date.get(Calendar.MONTH)+1;
        int day1 = date.get(Calendar.DAY_OF_MONTH);
        String format = null;
        if (year == year1){
            if(mouth == mouth1){
                if(day == day1){
                    dateFormat = new SimpleDateFormat("HH:mm");
                }else{
                    dateFormat = new SimpleDateFormat("MM-dd HH:mm");
                }
            }else{
                dateFormat = new SimpleDateFormat("MM-dd HH:mm");
            }
        }
        return  dateFormat.format(date1);

    }

}
