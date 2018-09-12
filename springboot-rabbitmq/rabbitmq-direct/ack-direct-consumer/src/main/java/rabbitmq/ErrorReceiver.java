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
                        type = ExchangeTypes.DIRECT
                ),
                key = "${mq.config.queue.error.routing.key}"
        )
)
public class ErrorReceiver {

    @RabbitHandler
    public void process(String msg) throws Exception {
        System.out.println("接受到Error日志:" + msg);

        //处理失败
        throw new Exception("test ack");
    }
}