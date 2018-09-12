import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import rabbitmq.Sender;
import rabbitmq.SpringbootRabbitmqApplication;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = SpringbootRabbitmqApplication.class)
public class SpringbootRabbitmqApplicationTests {

    @Autowired
    private Sender sender;

    @Test
    public void send() throws InterruptedException {
        this.sender.send(0);


    }

}
