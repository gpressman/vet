require "rails_helper"

feature "user creates account" do 
  scenario "successfully" do
    visit root_path

    click_on "Create account"
    fill_in "Email", with: "t@b.com"
    fill_in "Name", with: "Gabe"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"

    expect(page).to have_css 'p', text: 'Gabe'
  end
end