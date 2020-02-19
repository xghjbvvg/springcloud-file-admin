package com.company.config;

import com.company.dao.EmailMapper;
import com.company.domain.Email;
import com.company.service.EmailFeignClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class Scheduler {



    @Autowired
    EmailFeignClient feignClient;

    @Autowired
    EmailMapper emailMapper;

    /**
     * 1）0 0 2 1 * ? *   表示在每月的1日的凌晨2点调整任务
     *
     * 　　（2）0 15 10 ? * MON-FRI   表示周一到周五每天上午10:15执行作业
     *
     * 　　（3）0 15 10 ? 6L 2002-2006   表示2002-2006年的每个月的最后一个星期五上午10:15执行作
     *
     * 　　（4）0 0 10,14,16 * * ?   每天上午10点，下午2点，4点
     *
     * 　　（5）0 0/30 9-17 * * ?   朝九晚五工作时间内每半小时
     *
     * 　　（6）0 0 12 ? * WED    表示每个星期三中午12点
     *
     * 　　（7）0 0 12 * * ?   每天中午12点触发
     *
     * 　　（8）0 15 10 ? * *    每天上午10:15触发
     *
     * 　　（9）0 15 10 * * ?     每天上午10:15触发
     *
     * 　　（10）0 15 10 * * ? *    每天上午10:15触发
     *
     * 　　（11）0 15 10 * * ? 2005    2005年的每天上午10:15触发
     *
     * 　　（12）0 * 14 * * ?     在每天下午2点到下午2:59期间的每1分钟触发
     *
     * 　　（13）0 0/5 14 * * ?    在每天下午2点到下午2:55期间的每5分钟触发
     *
     * 　　（14）0 0/5 14,18 * * ?     在每天下午2点到2:55期间和下午6点到6:55期间的每5分钟触发
     *
     * 　　（15）0 0-5 14 * * ?    在每天下午2点到下午2:05期间的每1分钟触发
     *
     * 　　（16）0 10,44 14 ? 3 WED    每年三月的星期三的下午2:10和2:44触发
     *
     * 　　（17）0 15 10 ? * MON-FRI    周一至周五的上午10:15触发
     *
     * 　　（18）0 15 10 15 * ?    每月15日上午10:15触发
     *
     * 　　（19）0 15 10 L * ?    每月最后一日的上午10:15触发
     *
     * 　　（20）0 15 10 ? * 6L    每月的最后一个星期五上午10:15触发
     *
     * 　　（21）0 15 10 ? * 6L 2002-2005   2002年至2005年的每月的最后一个星期五上午10:15触发
     *
     * 　　（22）0 15 10 ? * 6#3   每月的第三个星期五上午10:15触发
     */
    //@Scheduled(fixedRate=20000)
    @Scheduled(cron = "0 0 13 * * ?")
    public void testTasks() {
        List<Email> emails = emailMapper.getCurrentEmail();
        Boolean aBoolean = feignClient.sendLetterByEmail(emails);
        System.out.println(aBoolean);
    }

}
