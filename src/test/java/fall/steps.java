package fall;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class steps {
	int total=0;
	int totalPrice=0;
	ArrayList<Integer> price = new ArrayList<Integer>();
	ArrayList<String> product = new ArrayList<String>();
	 checkout_price checkout;
		@Given("the price of a {string} is {int}")
		public void the_price_of_a_is(String product1, Integer price1) {
			if (!product.contains(product1)){
					price.add(price1);
		        	product.add(product1);
			}
		}

		@When("I checkout {int} {string}")
		public void i_checkout(Integer numberOfPieces, String product1) {
		checkout=new checkout_price();
		total += checkout.count(numberOfPieces, price.get(product.indexOf(product1)));
		}
		

		@Then("the total price should be {int}")
		public void the_total_price_should_be(Integer TotalPrice) {
			    assertEquals(TotalPrice.intValue(),total);
		}

}
