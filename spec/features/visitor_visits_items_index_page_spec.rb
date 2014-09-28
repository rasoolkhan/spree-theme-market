require 'rails_helper'
require 'spec_helper'

describe "the items index page" do
  9.times do
    FactoryGirl.create(:item)
  end
  
  before do
    visit '/items'
  end  
  
  it "displays the test Browse Spree Themes" do
    expect(page).to have_content "Browse Spree Themes" 
  end
  
  # it "has at least 9 images" do
  #   expect(page).to have_css 'img', count: 9
  # end
end
