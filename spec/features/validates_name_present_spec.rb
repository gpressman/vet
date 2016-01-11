require "rails_helper"

  feature "validates name presense true" do 
    scenario "successfully" do 
      visit root_path

      click_on "Create account"
      fill_in "Email", with: "z@b.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      click_on "Sign up"

      expect(page).to have_css 'h2', text: '1 error prohibited this user from being saved:'
    end
  end