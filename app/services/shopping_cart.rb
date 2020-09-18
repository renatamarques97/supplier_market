class ShoppingCart
  def self.add_to_cart(cart, product_id)
    cart << {
      product_id: product_id,
      quantity: 1
    } unless item_already_added?(cart, product_id)

    cart
  end

  def self.remove_one_from_cart(cart, product_id)
    cart.find { |item| item["product_id"] == product_id ? item["quantity"]-=1 : nil }
    cart.reject! { |item| item["quantity"].zero? }
  end

  def self.remove_from_cart(cart, product_id)
    cart.reject! { |item| item["product_id"] == product_id }
  end

  def self.cart_formated(cart)
    cart.inject([]) do |newCart, shopping_cart|
      product = Product.find_by_id(shopping_cart["product_id"])

      newCart << {
        product: product, 
        quantity: shopping_cart["quantity"]
      }
    end
  end

  private

  def self.item_already_added?(cart, product_id)
    cart.find{ |item| item["product_id"] == product_id ? item["quantity"]+=1 : nil}
  end
end