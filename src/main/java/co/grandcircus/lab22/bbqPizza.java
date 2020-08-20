package co.grandcircus.lab22;

public class bbqPizza {

	
	private String bbqpizza;
	private double price;
	
	
	public bbqPizza(String bbqpizza, double price) {
		super();
		this.bbqpizza = bbqpizza;
		this.price = price;
	}


	public String getBbqpizza() {
		return bbqpizza;
	}


	public void setBbqpizza(String bbqpizza) {
		this.bbqpizza = bbqpizza;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	@Override
	public String toString() {
		return "bbqPizza [bbqpizza=" + bbqpizza + ", price=" + price + "]";
	}


	
	
	
	
	
	
	
}
