class ReceiptsController < ApplicationController
    def calculate
      items = params[:items]
  
      pricing_table = {
        'Milk' => { unit_price: 3.97, sale_price: { quantity: 2, price: 5.00 } },
        'Bread' => { unit_price: 2.17, sale_price: { quantity: 3, price: 6.00 } },
        'Banana' => { unit_price: 0.99, sale_price: nil },
        'Apple' => { unit_price: 0.89, sale_price: nil }
      }
  
      result = CalculateReceipt.new(items, pricing_table).call
  
      render json: result
    end
  end
  