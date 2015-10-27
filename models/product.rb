require_relative 'base_model'

class Product < BaseModel
  attr_reader :price
  attr_accessor :name, :have_import_tax, :have_sales_tax

  def initialize(data)
    self.name = data[:name]
    self.price = data[:price]
    self.have_sales_tax = data[:have_sales_tax]
    self.have_import_tax = data[:have_import_tax]
  end

  def price=(price)
    @price = format(price)
  end

  def basic_taxes
    @have_sales_tax ? @price*BASIC_TAXES/100 : 0
  end

  def additional_taxes
    @have_import_tax ? @price*ADDITIONAL_TAXES/100 : 0
  end

  def sales_taxes
    format(basic_taxes) + format(additional_taxes)
  end
end
