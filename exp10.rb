class BooksInStock
	attr_reader :isbn, :price
	def initialize(isbn,price)
		@isbn = isbn
		@price = Float(price)
	end
	def price_in_cents
		Integer(price*100+0.5)
	end
end

book1 = BooksInStock.new(123,24)
puts book1.isbn
puts book1.price
puts book1.price_in_cents