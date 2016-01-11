require "rails_helper"

feature "User signs in as receptionist" do 
  scenario "successfully" do 
  sign_in_as_receptionist

  expect(page).to have_css 'p', text: 'Receptionist'
  end
end