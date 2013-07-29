class BookInStock
  
  attr_reader :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
  
  # This method is defined by `attr_accessor :price` above
  # def price=(new_price)
  #   @price = new_price
  # end
  
  # Virtual instance method: price_in_cents
  # To the outside world, `price_in_cents` seems like a normal attribute. Interally though, it has no corresponding instance variable.
  # By shielding the implementation of this class from the outside world, we hide what's an instance variable and what's not, allowing us to change things in the future without breaking code that uses this class.
  def price_in_cents
    Integer(price*100 + 0.5)
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

# 
b1 = BookInStock.new("isbn1", 3)
puts b1

b2 = BookInStock.new("isbn2", 3.14)
puts b1

b3 = BookInStock.new("isbn3", "5.67")
puts b3

# Writable Attributes
book = BookInStock.new("isbn1", 33.80)
puts "ISBN      = #{book.isbn}"     # => ISBN = isbn1
puts "Price     = #{book.price}"    # => Price = 33.8
book.price      = book.price * 0.75 # Discount price
puts "New price = #{book.price}"    # => New price = 25.349...

# Virtual Attributes
book = BookInStock.new()