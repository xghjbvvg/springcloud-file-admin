package com.company.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexUtil {

    public static List<String> getImageOfStr(String str){
        List<String> imgList = new ArrayList<>();
        String regex = "http://(\\w|:|/|[^u4E00-u9FA5])*(jpg|png|gif){1}";
        final Pattern pattern = Pattern.compile(regex);
        final Matcher matcher = pattern.matcher(str);

        while (matcher.find())
        {
            imgList.add(matcher.group());
            //System.out.println(matcher.group());
        }
        return imgList;
    }

    public static String saveChineseOfStr(String str){
        String reg = "[^\u4e00-\u9fa5]";
        return str.replaceAll(reg, " ");
    }

}
