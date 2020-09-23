require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before do
    @products = assign(:products, [
      Product.create!(
        name: "Name",
        description: "MyText",
        height: 2.0,
        width: 3.0,
        length: 4.0,
        weight: 2.5,
        quantity: 3,
        price: 3.78,
        person_type: "Provider",
        person_id: create(:provider).id
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 1
    assert_select "tr>td", text: "MyText".to_s, count: 1
    assert_select "tr>td", text: @products.first.dimensions, count: 1
    assert_select "tr>td", text: 2.5.to_s, count: 1
    assert_select "tr>td", text: 3.to_s, count: 1
    assert_select "tr>td", text: 3.78.to_s, count: 1
  end
end
