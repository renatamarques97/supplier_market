require "rails_helper"

RSpec.describe ShoppingCart do
  describe ".add_to_cart" do
    let!(:client)             { create(:client) }
    let!(:provider)           { create(:provider) }
    let!(:products)           { create_list(:product, 10, person: provider) }
    let!(:product_id)         { products.sample.id }
    let(:shopping_cart_empty) { [] }
    let(:shopping_cart) do
      [{
        product_id: product_id,
        quantity: 1
      }]
    end
    let(:shopping_cart_added_to_cart)         { ShoppingCart.add_to_cart(shopping_cart_empty, product_id) }
    let(:shopping_cart_already_added_to_cart) { ShoppingCart.add_to_cart(shopping_cart, product_id) }
    let(:result_spec_added_to_cart) do
      [{
        product_id: product_id,
        quantity: 1
      }]
    end
    let(:result_spec_already_added_to_cart) do
      [{
        product_id: product_id,
        quantity: 2
      }]
    end

    it "added to cart" do
      expect(shopping_cart_added_to_cart).to eq(result_spec_added_to_cart)
    end

    it "already added to cart" do
      expect(shopping_cart_already_added_to_cart).to eq(result_spec_already_added_to_cart)
    end
  end

  describe ".remove_one_from_cart" do
    let!(:client)       { create(:client) }
    let!(:provider)     { create(:provider) }
    let!(:products)     { create_list(:product, 10, person: provider) }
    let!(:products_id)  { products.sample(3).pluck(:id) }
    let(:shopping_cart) do
      [
        {
          product_id: products_id.first,
          quantity: 2
        },
        {
          product_id: products_id.second,
          quantity: 4
        },
        {
          product_id: products_id.third,
          quantity: 6
        }
      ]
    end
    let(:shopping_cart_remove_one_from_cart)  { ShoppingCart.remove_one_from_cart(shopping_cart, products_id.second) }
    let(:result_spec_remove_one_from_cart) do
      [
        {
          product_id: products_id.first,
          quantity: 2
        },
        {
          product_id: products_id.second,
          quantity: 3
        },
        {
          product_id: products_id.third,
          quantity: 6
        }
      ]
    end

    it "removed one from cart" do
      expect(shopping_cart_remove_one_from_cart).to eq(result_spec_remove_one_from_cart)
    end
  end

  describe ".remove_all_from_cart" do
    let!(:client)       { create(:client) }
    let!(:provider)     { create(:provider) }
    let!(:products)     { create_list(:product, 10, person: provider) }
    let!(:products_id)  { products.sample(3).pluck(:id) }
    let(:shopping_cart) do
      [
        {
          product_id: products_id.first,
          quantity: 2
        },
        {
          product_id: products_id.second,
          quantity: 4
        },
        {
          product_id: products_id.third,
          quantity: 6
        }
      ]
    end
    let(:shopping_cart_remove_all_from_cart)  { ShoppingCart.remove_all_from_cart(shopping_cart, products_id.third) }
    let(:result_spec_remove_all_from_cart) do
      [
        {
          product_id: products_id.first,
          quantity: 2
        },
        {
          product_id: products_id.second,
          quantity: 4
        }
      ]
    end

    it "removed all from cart" do
      expect(shopping_cart_remove_all_from_cart).to eq(result_spec_remove_all_from_cart)
    end
  end

  describe ".cart_formatted" do
    let!(:client)       { create(:client) }
    let!(:provider)     { create(:provider) }
    let!(:products)     { create_list(:product, 10, person: provider) }
    let(:shopping_cart) do
      [
        {
          product_id: products.first.id,
          quantity: 7
        },
        {
          product_id: products.second.id,
          quantity: 1
        },
        {
          product_id: products.third.id,
          quantity: 3
        }
      ]
    end
    let(:shopping_cart_formatted)  { ShoppingCart.cart_formatted(shopping_cart) }
    let(:result_spec_cart_formatted) do
      [
        {
          product: products.first,
          quantity: 7
        },
        {
          product: products.second,
          quantity: 1
        },
        {
          product: products.third,
          quantity: 3
        }
      ]
    end

    it "cart formatted" do
      expect(shopping_cart_formatted).to eq(result_spec_cart_formatted)
    end
  end
end