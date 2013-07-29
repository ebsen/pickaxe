class JavaBookInStock {
	private double _price;
	public double getPrice() {
		return price;
	}
	public void setPrice(double newPrice) {
		_price = newPrice;
	}
}
b = new JavaBookInStock(....);
b.setPrice(calculate_discount(b.getPrice()));