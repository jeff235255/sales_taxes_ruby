class InputDataHelper

  def self.input_1
    [
      OrderDetail.new(
        quantity: 1,
        product: Product.new(
          name: 'book', 
          price: 12.49, 
          have_sales_tax: false,
          have_import_tax: false 
        )
      ),
      OrderDetail.new(
        quantity: 1,
        product: Product.new(
          name: 'music cd', 
          price: 14.99,
          have_sales_tax: true, 
          have_import_tax: false
        )
      ),
      OrderDetail.new(
        quantity: 1,
        product: Product.new(
          name: 'chocolate bar', 
          price: 0.85, 
          have_sales_tax: false,
          have_import_tax: false
        )
      )
    ]
  end

  def self.input_2
    [
      OrderDetail.new(
        quantity: 1,
        product: Product.new(
          name: 'imported box of chocolates', 
          price: 10.00,
          have_sales_tax: false, 
          have_import_tax: true
        )
      ),
      OrderDetail.new(
        quantity: 1,
        product: Product.new(
          name: 'imported bottle of perfume', 
          price: 47.50, 
          have_sales_tax: true,
          have_import_tax: true
        )
      )
    ]
  end

  def self.input_3
    [
      OrderDetail.new(
        quantity: 1,
        product: Product.new(
          name: 'imported bottle of perfume', 
          price: 27.99,
          have_sales_tax: true, 
          have_import_tax: true
        )
      ),
      OrderDetail.new(
        quantity: 1,
        product: Product.new(
          name: 'bottle of perfume', 
          price: 18.99,
          have_sales_tax: true, 
          have_import_tax: false
        )
      ),
      OrderDetail.new(
        quantity: 1,
        product: Product.new(
          name: 'packet of headache pills', 
          price: 9.75,
          have_sales_tax: false, 
          have_import_tax: false
        )
      ),
      OrderDetail.new(
        quantity: 1,
        product: Product.new(
          name: 'box of imported chocolates', 
          price: 11.25,
          have_sales_tax: false, 
          have_import_tax: true
        )
      )
    ]
  end
end