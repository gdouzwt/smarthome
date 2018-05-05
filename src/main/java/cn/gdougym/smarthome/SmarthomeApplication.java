package cn.gdougym.smarthome;

import org.apache.catalina.connector.Connector;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class SmarthomeApplication {

    public static void main(String[] args) {
        SpringApplication.run(SmarthomeApplication.class, args);
    }

    //创建一个AJP连接器，用于嵌入版Tomcat与Apache2的连接（用作反向代理,当然也可以用Nginx或者其他方式，这里用Apache2顺手)
    @Bean
    public TomcatServletWebServerFactory servletContainer() {

        TomcatServletWebServerFactory tomcat = new TomcatServletWebServerFactory();

        Connector ajpConnector = new Connector("AJP/1.3");
        ajpConnector.setPort(9090);
        ajpConnector.setSecure(false);
        ajpConnector.setAllowTrace(false);
        ajpConnector.setScheme("http");
        tomcat.addAdditionalTomcatConnectors(ajpConnector);
        return tomcat;

    }


}
