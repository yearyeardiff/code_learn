package rabbitmq;

import org.springframework.amqp.core.ExchangeTypes;
import org.springframework.amqp.rabbit.annotation.*;
import org.springframework.stereotype.Component;

@Component
@RabbitListener(
        bindings = @QueueBinding(
                value = @Queue(
                        value = "${mq.config.queue.push}",
                        autoDelete = "true"
                ),
                exchange = @Exchange(
                        value = "${mq.config.exchange}",
                        type = ExchangeTypes.FANOUT
                )
        )
)
public class PushReceiver {

    @RabbitHandler
    public void process(String msg) {
        System.out.println("push处理:" + msg);
    }
}
