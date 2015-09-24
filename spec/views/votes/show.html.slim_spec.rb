require 'rails_helper'

RSpec.describe "votes/show", type: :view do
  before(:each) do
    @vote = assign(:vote, Vote.create!(
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
