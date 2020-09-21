require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, build(:product))
    assign(:product, build(:product))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do
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
