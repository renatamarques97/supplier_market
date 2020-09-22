class ShoppingCart
  class << self
    def add_to_cart(cart, product_id)
      convert_cart(cart)

      @_cart << {
        product_id: product_id,
        quantity: 1
      } unless item_already_added?(@_cart, product_id)

      @_cart
    end

    def remove_one_from_cart(cart, product_id)
      convert_cart(cart)

      @_cart.find   { |item| item[:product_id] == product_id ? item[:quantity]-=1 : nil }
      @_cart.reject { |item| item[:quantity].zero? }
    end

    def remove_all_from_cart(cart, product_id)
      convert_cart(cart)

      @_cart.reject { |item| item[:product_id] == product_id }
    end

    def cart_formatted(cart)
      convert_cart(cart)

      @_cart.inject([]) do |newCart, shopping_cart|
        newCart << {
          product: find_product(shopping_cart[:product_id]), 
          quantity: shopping_cart[:quantity]
        }
      end
    end

    private

    def item_already_added?(cart, product_id)
      cart.find{ |item| item[:product_id] == product_id ? item[:quantity]+=1 : nil}
    end

    def find_product(product_id)
      Product.find_by_id(product_id)
    end

    def convert_cart(cart)
      @_cart = convert_to_symbol(cart)
    end

    def convert_to_symbol(cart)
      cart.map(&:symbolize_keys) 
    end
  end
end