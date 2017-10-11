class Product

  attr_accessor :product_code,:name,:price

  def initialize(product_code,name,price)
    self.product_code = product_code
    self.name = name
    self.price = price
  end

  

end
