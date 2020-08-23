require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      description: "MyText",
      dimensions: "",
      weight: 1.5,
      quantity: 1,
      provider: nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[dimensions]"

      assert_select "input[name=?]", "product[weight]"

      assert_select "input[name=?]", "product[quantity]"

      assert_select "input[name=?]", "product[provider_id]"
    end
  end
end
