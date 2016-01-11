require "rails_helper"

feature "new user's user_type defaults as 'Customer'" do 
  scenario "successfully" do

  	visit root_path

    click_on "Create account"
    fill_in "Name", with: "Gabe"
    fill_in "Email", with: "z@b.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"

    expect(page).to have_css 'p', text: 'Customer'
  end
end