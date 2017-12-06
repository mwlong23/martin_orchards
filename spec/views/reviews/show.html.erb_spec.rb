require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :title => "Title",
      :body => "Body",
      :rating => 2,
      :product_id => 3,
      :user_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Body/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
