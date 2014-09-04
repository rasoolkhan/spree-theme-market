require 'rails_helper'
require 'spec_helper'

describe "the items index page" do
  it "shows the Spring theme" do
    visit '/items'
    expect(page).to have_content "Spring" 
  end
  
  # expect to see x products rendered
  # check css is there
end