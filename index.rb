require_relative 'models/product'
require_relative 'models/order_detail'
require_relative 'models/order'
require_relative 'helpers/input_data_helper'

def print_sales_taxes
  puts "\n# SALES TAXES\n\n"

  puts "Basic sales tax is applicable at a rate of 10% on all goods, except books, food,"\
    "and medical products that are exempt. Import duty is an additional sales tax applicable"\
    "on all imported goods at a rate of 5%, with no exemptions.\n\n"

  puts "When I purchase items I receive a receipt that lists the name of all the items and"\
    "their price (including tax), finishing with the total cost of the items, and the total amounts"\
    "of sales taxes paid. The rounding rules for sales tax are that for a tax rate of n%, a shelf"\
    "price of p contains (np/100 rounded up to the nearest 0.05) amount of sales tax.\n\n"
end

def print_input_example
  print_sales_taxes

  puts 'INPUT:'
  puts '## Input 1'
  puts 'Quantity    Product       Price'
  puts '1           book          12.49'
  puts '1           music cd      14.99'
  puts '1           chocolate bar 0.85'
  puts "\n"
  puts '## Input 2'
  puts 'Quantity    Product                       Price'
  puts '1           imported box of chocolates    10.00'
  puts '1           imported bottle of perfume    47.50'
  puts "\n"
  puts '## Input 3'
  puts 'Quantity    Product                     Price'
  puts '1           imported bottle of perfume  27.99'
  puts '1           bottle of perfume           18.99'
  puts '1           packet of headache pills    9.75'
  puts '1           box of imported chocolates  11.25'  

  puts "\n\n========== Please enter your selection: "
  puts "1.Input example 1"
  puts "2.Input example 2"
  puts "3.Input example 3"
  puts "4.Exit application"
  
  type = gets
end

def input_data(input)
  type = case input.to_i
    when 1
      InputDataHelper::input_1
    when 2
      InputDataHelper::input_2
    when 3
      InputDataHelper::input_3
  end  
end


loop do
  type = print_input_example
  
  # exit sales taxes application
  if type.to_i == 4 then
    break
  end

  if [1, 2, 3].include?(type.to_i) then
    selected_input = input_data(type)

    order = Order.new(order_details: selected_input)

    puts "\n\n"
    puts "#OUPUT:\n"
    puts order.output_csv

    break    
  end
end