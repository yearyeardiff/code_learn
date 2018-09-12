package rabbitmq;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class Sender {

    @Autowired
    private AmqpTemplate rabbitmqTemplate;

    @Value("${mq.config.exchange}")
    private String exchange;

    public void send(int number) {
        String msg = "hello," + number;
        this.rabbitmqTemplate.convertAndSend(exchange, "log.info.routing.key", msg);
        this.rabbitmqTemplate.convertAndSend(exchange, "log.error.routing.key", msg);
    }
}
