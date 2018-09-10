package com.zhang.rabbitmq;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Component;

@Component
public class Receiver {

    @RabbitListener(queues = "rabbitmq-hello")
    public void process(String msg) {
        System.out.println("receiver:" + msg);
    }
}
