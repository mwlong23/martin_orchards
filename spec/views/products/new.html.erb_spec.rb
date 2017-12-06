require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :title => "MyString",
      :description => "MyString",
      :weight => 1,
      :box_price => 1,
      :weekly_delivery_price => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "input#product_description[name=?]", "product[description]"

      assert_select "input#product_weight[name=?]", "product[weight]"

      assert_select "input#product_box_price[name=?]", "product[box_price]"

      assert_select "input#product_weekly_delivery_price[name=?]", "product[weekly_delivery_price]"
    end
  end
end
