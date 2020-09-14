class ShoppingCartController < ApplicationController
  def add_to_cart
    product_id = params[:product_id]
    session[:shopping_cart] = [] unless session[:shopping_cart]

    product_founded = session[:shopping_cart].find{ |item| if item["product_id"] == product_id; item["quantity"]+=1; end }

    session[:shopping_cart] << {
      product_id: product_id,
      quantity: 1
    } unless product_founded

    flash[:success] = "Product added to cart!"
  end
end
