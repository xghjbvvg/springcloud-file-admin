package com.company;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
@RunWith(MockitoJUnitRunner.class)
//@RunWith(SpringRunner.class)
//@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.DEFINED_PORT)
public class FriendsServiceApplicationTests {

    @Test
    public void contextLoads() throws ParseException {
        Calendar date = Calendar.getInstance();
        int year = date.get(Calendar.YEAR);
        int mouth = date.get(Calendar.MONTH)+1;
        int day = date.get(Calendar.DAY_OF_MONTH);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yy-MM-dd HH:mm");
        String str = "2020-02-03 14:30";
        Date date1 = dateFormat.parse(str);
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
        format = dateFormat.format(date1);
        System.out.println(format);
    }

}
