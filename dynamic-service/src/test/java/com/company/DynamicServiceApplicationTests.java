package com.company;


import com.company.util.Patterns;
import com.company.util.RegexUtil;
import org.junit.Test;
import org.junit.runner.RunWith;

import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RunWith(MockitoJUnitRunner.class)
public class DynamicServiceApplicationTests {

    @Test
   public  void contextLoads() {
        //String regex =  "^([hH][tT]{2}[pP]:/*|[hH][tT]{2}[pP][sS]:/*|[fF][tT][pP]:/*)(([A-Za-z0-9-~]+).)+([A-Za-z0-9-~\\/])+(\\?{0,1}(([A-Za-z0-9-~]+\\={0,1})([A-Za-z0-9-~]*)\\&{0,1})*)$";
        String str = "<p>热风同归于尽电脑体验人工费KJM表是托付给一开门的TV可以大V停电心http://localhost:9001/static/head/wallhaven-647733.png电图 他要看体验度克图格亚不要付款心电图凡人歌严己宽人反坦克与，弄让人很通过一款么是床头柜费用科技与通过路口，育红路ui；。的乳房火热uyhilugijntgyk用户管理i礼拜一规划了担任掩护!<img src=\"http://localhost:9001/static/head/wallhaven-647733.jpg\" alt=\"wallhaven647733.jpg\" /></p>\n";
        String regex;
        final List<String> list = new ArrayList<String>();
        regex = "http://(\\w|:|/|[^u4E00-u9FA5])*(jpg|png|gif){1}";
        final Pattern pa = Pattern.compile(regex);
        final Matcher ma = pa.matcher(str);

        while (ma.find())
        {
            System.out.println(ma.group());
        }

    }

    @Test
    public  void test() {
        //String regex =  "^([hH][tT]{2}[pP]:/*|[hH][tT]{2}[pP][sS]:/*|[fF][tT][pP]:/*)(([A-Za-z0-9-~]+).)+([A-Za-z0-9-~\\/])+(\\?{0,1}(([A-Za-z0-9-~]+\\={0,1})([A-Za-z0-9-~]*)\\&{0,1})*)$";
        String str = "<p>热风同归于尽电脑体验人工费KJM表是托付给一开门的TV可以大V停电心电图 他要看体验度克图格亚不要付款心电图凡人歌严己宽人反坦克与，弄让人很通过一款么是床头柜费用科技与通过路口，育红路ui；。的乳房火热uyhilugijntg护!<img src=\"http://localhost:9001/static/head/wallhaven-647733.jpg\" alt=\"wallhaven647733.jpg\" /></p>\n";
        String reg = "[^\u4e00-\u9fa5]";
        System.out.println(RegexUtil.saveChineseOfStr(str));

    }

}
