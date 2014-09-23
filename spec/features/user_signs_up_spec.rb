require 'rails_helper'

feature "User signs up" do
  scenario "redirect to login screen if the user has not logged in" do
    given_no_users_logged_in
    when_i_visit('/admin/items')
    then_i_will_be_redirected_to("/login")
  end
  
  scenario "login when user logs in successfully" do 
    given_i_am_logged_in
    when_i_visit('/admin/items')
    then_i_should_see_my_item_page
  end
  
  scenario "tries to log in with incorrect details" do
    given_no_users_logged_in
    when_i_visit('/admin/items')
    login_with_incorrect_details('wrong email','wrong password')
    then_i_should_see_flash_error
  end
end

def given_no_users_logged_in
  Capybara.reset_sessions!
end

def then_i_will_be_redirected_to(url)
  expect(uri).to eql(url)
end

def when_i_visit(url)
  visit(url)
end

def given_i_am_logged_in
  @user = FactoryGirl.create(:user, email: 'tracy@email', password: '123')
  login_with('tracy@email', '123')
end

def login_with(email, password)
  visit '/login'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'submit'
  expect(page).to have_content("Logged In!")
end

def login_with_incorrect_details(email, password)
  visit '/login'
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'submit'
end

def then_i_should_see_my_item_page
  expect(uri).to eql('/admin/items')
  expect(page).to have_content('My Themes')
end

def then_i_should_see_flash_error
  expect(page).to have_content('Invalid email or password')
end

def uri
  URI.parse(current_url).request_uri
end
