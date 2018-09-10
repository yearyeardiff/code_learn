package rabbitmq;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
public class ProductSender {

    @Autowired
    private AmqpTemplate rabbitmqTemplate;

    @Value("${mq.config.exchange}")
    private String exchange;

    public void send() {
        this.rabbitmqTemplate.convertAndSend(exchange, "product.log.debug", "product.log.debug....");
        this.rabbitmqTemplate.convertAndSend(exchange, "product.log.info", "product.log.info....");
        this.rabbitmqTemplate.convertAndSend(exchange, "product.log.warn", "product.log.warn....");
        this.rabbitmqTemplate.convertAndSend(exchange, "product.log.error", "product.log.error....");
    }
}
