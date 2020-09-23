require 'rails_helper'

RSpec.describe ShoppingCartController, type: :request do
  let!(:provider) { create(:provider) }
  let!(:product)  { create(:product, person: provider) }

  before { sign_in provider }

  describe "GET /index" do
    it "renders a successful response" do
      get shopping_cart_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /add_to_cart" do
    it "renders a successful response" do
      post add_to_cart_path(product_id: product.id)
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /remove_one_from_cart" do
    it "renders a successful response" do
      post remove_one_from_cart_path(product_id: product.id)
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /remove_all_from_cart" do
    it "renders a successful response" do
      post remove_all_from_cart_path(product_id: product.id)
      expect(response).to have_http_status(200)
    end
  end
end
