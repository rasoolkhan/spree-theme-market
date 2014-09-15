require 'rails_helper'
require 'spec_helper'

feature "User adds a new theme" do
  scenario 'with valid data' do
    login_with('tracy','super_secure')
    visit items_path
    click_link('Admin')
    click_button('ADD NEW THEME')
    fill_in 'Name', :with => 'Tracy'
    fill_in 'Description', :with => 'Some Lorem Ipsum'
    fill_in 'Price', :with => '25'
    fill_in 'Code', :with => '7897'
    fill_in 'Image preview', :with => 'Placebear.com/200/200'
    click_button('submit')
    expect(page).to have_content 'Successfully saved theme'
    item = Item.last
    expect(item.name).to eq 'Tracy'
    # look up the most recent item and check all the attributes were saved correctly.
  end
end
