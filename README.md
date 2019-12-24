# gateway-oauth
## auth ：权限控制服务中心
## gateway-service ：spring cloud gateway 与 oauth2 整合(port:8763)
## gateway-zuul ： spring cloud zuul 与oauth2整合(port:8762)
## user-service ：用户微服务
## service-common 公共模块，目前主要是JavaBean
## service-eureka ：项目中没有使用该注册中心，而是用了一个eureka在线集群
## fileVo.sql 数据库文件
#### 获取token（post请求）
１．client 模式：http://localhost:8763/oauth/token?grant_type=client_credentials&scope=select&client_id=client_1&client_secret=123456<br/>
２．password模式：http://localhost:8763/oauth/token?username=fpf&password=fpf&grant_type=password&scope=select&client_id=client_2&client_secret=123456

#### 请求资源（get）
http://localhost:8763/user/query?access_token=f63eda98-2434-49c2-b051-d8d6cd045c9e

#### 参考链接：https://gitee.com/singlekingdom/spring-cloud-auth-gateway-system
####            https://gitee.com/xingfly/Spring-CloudJiYuZuulDeTongYiShouQuanRenZheng
入门小白，研究良久，实属不易，如有问题或者bug，敬请赐教，thank you

