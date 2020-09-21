class ShoppingCartController < ApplicationController
  before_action :set_product_id, only: [:add_to_cart, :remove_one_from_cart, :remove_all_from_cart]
  before_action :check_shopping_cart

  def index
    @shopping_cart = ShoppingCart.cart_formatted(session[:shopping_cart])
  end

  def add_to_cart
    session[:shopping_cart] = ShoppingCart.add_to_cart(session[:shopping_cart], @_product_id)

    flash[:success] = "Product added to cart!"
    head :ok
  end

  def remove_one_from_cart
    session[:shopping_cart] = ShoppingCart.remove_one_from_cart(session[:shopping_cart], @_product_id)
    head :ok
  end

  def remove_all_from_cart
    session[:shopping_cart] = ShoppingCart.remove_all_from_cart(session[:shopping_cart], @_product_id)
    head :ok
  end

  private

  def set_product_id
    @_product_id = params[:product_id]
  end

  def check_shopping_cart
    session[:shopping_cart] = [] unless session[:shopping_cart]
  end
end
