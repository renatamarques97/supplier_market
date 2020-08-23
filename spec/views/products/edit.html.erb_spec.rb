require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      name: "MyString",
      description: "MyText",
      dimensions: "",
      weight: 1.5,
      quantity: 1,
      provider: create(:person, provider: true).id
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input[name=?]", "product[name]"
      assert_select "textarea[name=?]", "product[description]"
      assert_select "input[name=?]", "product[dimensions]"
      assert_select "input[name=?]", "product[weight]"
      assert_select "input[name=?]", "product[quantity]"
    end
  end
end
