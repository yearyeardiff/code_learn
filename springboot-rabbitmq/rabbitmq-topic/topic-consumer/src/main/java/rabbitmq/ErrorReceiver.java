package rabbitmq;

import org.springframework.amqp.core.ExchangeTypes;
import org.springframework.amqp.rabbit.annotation.*;
import org.springframework.stereotype.Component;

@Component
@RabbitListener(
        bindings = @QueueBinding(
                value = @Queue(
                        value = "${mq.config.queue.error}",
                        autoDelete = "true"
                ),
                exchange = @Exchange(
                        value = "${mq.config.exchange}",
                        type = ExchangeTypes.TOPIC
                ),
                key = "*.log.error"
        )
)
public class ErrorReceiver {

    @RabbitHandler
    public void process(String msg) {
        System.out.println("error-----日志:" + msg);
    }
}