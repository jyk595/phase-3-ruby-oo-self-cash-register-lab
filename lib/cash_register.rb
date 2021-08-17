# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction

require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items
  @@items = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    # @@items << title
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total - (@total * @discount/100)
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@items
  end

end