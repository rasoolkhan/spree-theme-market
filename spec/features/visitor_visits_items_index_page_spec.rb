require 'rails_helper'
require 'spec_helper'

describe "the items index page" do
  it "shows the Spring theme" do
    visit '/items'
    expect(page).to have_content "Spring" 
  end

  it "shows 9 product divs" do
    expect(page).to have_css 'div#pure-u-1-3', :count => 9
  end

  # expect to see x products rendered
  # check css is there
end