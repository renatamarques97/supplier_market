require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      name: "Name",
      description: "MyText",
      height: 2.0,
      width: 3.0,
      length: 4.0,
      weight: 2.5,
      quantity: 3,
      price: 2.7,
      person_type: "Person",
      person_id: create(:provider).id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2.0/)
    expect(rendered).to match(/3.0/)
    expect(rendered).to match(/4.0/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/2.7/)
  end
end
