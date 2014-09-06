require 'rails_helper'
require 'spec_helper'

describe "the items index page" do
  before do
    visit '/items'
  end  
  it "shows the Spring theme" do
    expect(page).to have_content "Spring" 
  end

  it "shows 9 product divs" do
    expect(page).to have_css('div .box'), count: 9
  end
  
  it "shows 9 images" do
    expect(page).to have_css('.box img'), count: 9
  end
end