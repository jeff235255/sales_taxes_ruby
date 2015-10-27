require_relative 'base_model'

class Order < BaseModel
  attr_accessor :order_details

  def initialize(data)
    self.order_details = data[:order_details]
  end

  def prices
    order_details.inject(0){ |sum, order_detail| order_detail.prices + sum }
  end

  def sales_taxes
    order_details.inject(0){ |sum, order_detail| order_detail.sales_taxes + sum }
  end

  def total
    sales_taxes + prices
  end

  def output_csv
    csv = @order_details.map(&:output_csv).join("\n")
    csv << "\n\nSales Taxes: #{format(sales_taxes)}"
    csv << "\nTotal: #{format(total)}"
  end
end
