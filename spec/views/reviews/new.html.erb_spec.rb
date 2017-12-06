require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :title => "MyString",
      :body => "MyString",
      :rating => 1,
      :product_id => 1,
      :user_id => 1
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_title[name=?]", "review[title]"

      assert_select "input#review_body[name=?]", "review[body]"

      assert_select "input#review_rating[name=?]", "review[rating]"

      assert_select "input#review_product_id[name=?]", "review[product_id]"

      assert_select "input#review_user_id[name=?]", "review[user_id]"
    end
  end
end
