require "rails_helper"

  feature "validates length of name less than 30 characters" do 
    scenario "successfully" do
    	visit root_path

        click_on "Create account"
        fill_in "Email", with: "gabe@gabe.com"
        fill_in "Name", with: "This string should fail if it is more than 35 characters.  How many characters is this?"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_on "Sign up"

        expect(page).to have_css 'h2', text: '1 error prohibited this user from being saved:'

    end
  end