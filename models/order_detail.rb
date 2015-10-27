require_relative 'base_model'

class OrderDetail < BaseModel
  attr_reader :quantity
  attr_accessor :product

  def initialize(data)
    self.quantity = data[:quantity]
    self.product = data[:product]
  end

  def quantity=(quantity)
    @quantity = quantity.to_i.abs
  end

  def prices
    @product.price * @quantity
  end

  def sales_taxes
    @product.sales_taxes * @quantity
  end

  def output_csv
    "#{@quantity}, #{@product.name}, #{format(@product.price + @product.sales_taxes)}"
  end
end
