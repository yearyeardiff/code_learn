import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import rabbitmq.OrderSender;
import rabbitmq.ProductSender;
import rabbitmq.SpringbootRabbitmqApplication;
import rabbitmq.UserSender;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = SpringbootRabbitmqApplication.class)
public class SpringbootRabbitmqApplicationTests {

    @Autowired
    private UserSender userSender;

    @Autowired
    private ProductSender productSender;

    @Autowired
    private OrderSender orderSender;

    @Test
    public void send() {
        this.userSender.send();
        this.productSender.send();
        this.orderSender.send();
    }

}
