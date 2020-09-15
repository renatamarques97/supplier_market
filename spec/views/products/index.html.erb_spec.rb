require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    @products = assign(:products, [
      Product.create!(
        name: "Name",
        description: "MyText",
        height: 2.0,
        width: 3.0,
        length: 4.0,
        weight: 2.5,
        quantity: 3,
        person_type: "Provider",
        person_id: create(:provider).id
      ),
      Product.create!(
        name: "Name",
        description: "MyText",
        height: 2.0,
        width: 3.0,
        length: 4.0,
        weight: 2.5,
        quantity: 3,
        person_type: "Provider",
        person_id: create(:provider).id
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text:  @products.first.dimensions, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
