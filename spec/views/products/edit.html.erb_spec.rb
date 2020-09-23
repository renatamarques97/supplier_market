require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, create(:product))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input[name=?]", "product[name]"
      assert_select "textarea[name=?]", "product[description]"
      assert_select "input[name=?]", "product[height]"
      assert_select "input[name=?]", "product[width]"
      assert_select "input[name=?]", "product[length]"
      assert_select "input[name=?]", "product[weight]"
      assert_select "input[name=?]", "product[quantity]"
    end
  end
end
