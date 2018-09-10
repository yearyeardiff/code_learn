package rabbitmq;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class UserSender {

    @Autowired
    private AmqpTemplate rabbitmqTemplate;

    @Value("${mq.config.exchange}")
    private String exchange;

    public void send() {
        this.rabbitmqTemplate.convertAndSend(exchange, "user.log.debug", "user.log.debug....");
        this.rabbitmqTemplate.convertAndSend(exchange, "user.log.info", "user.log.info....");
        this.rabbitmqTemplate.convertAndSend(exchange, "user.log.warn", "user.log.warn....");
        this.rabbitmqTemplate.convertAndSend(exchange, "user.log.error", "user.log.error....");
    }
}
