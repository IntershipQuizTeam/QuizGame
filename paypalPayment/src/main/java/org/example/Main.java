import com.paypal.api.payments.*;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PayPalController {

    @Value("${paypal.clientId}")
    private String clientId;

    @Value("${paypal.clientSecret}")
    private String clientSecret;

    @PostMapping("/pay/hint")
    public String payForHint(@RequestBody HintPaymentRequest request) {
        APIContext apiContext = new APIContext(clientId, clientSecret, "sandbox");

        try {
            // Create a payment object with the transaction details
            Payment payment = new Payment();
            payment.setIntent("sale");

            Amount amount = new Amount();
            amount.setCurrency("USD");
            amount.setTotal(request.getAmount()); // Amount for the hint
            payment.setAmount(amount);

            RedirectUrls redirectUrls = new RedirectUrls();
            redirectUrls.setReturnUrl("http://your-website.com/paypal/success"); // URL for successful payment
            redirectUrls.setCancelUrl("http://your-website.com/paypal/cancel"); // URL if user cancels payment
            payment.setRedirectUrls(redirectUrls);

            Payment createdPayment = payment.create(apiContext);
            for (Links link : createdPayment.getLinks()) {
                if (link.getRel().equals("approval_url")) {
                    return link.getHref();
                }
            }
        } catch (PayPalRESTException e) {
            e.printStackTrace();
        }

        return "Error occurred during payment";
    }
}