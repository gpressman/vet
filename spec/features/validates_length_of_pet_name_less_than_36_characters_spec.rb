require "rails_helper"
  feature "Validates name is less than 36 characters" do 
  	scenario "Successfully" do
  	  User.create(name: "Tim", email: "abc@gmail.com", password: "password")
  	  sign_in_as_owner
  	  click_on "New pet"
  	  select "Tim", from: "pet_user_id"
  	  fill_in "Name", with: "This is a very long name.  To have a name this long would be silly.  It should fail validations."
  	  select "Cat", from: "pet_pet_type"
  	  fill_in "pet_breed", with: "American Tabby"
  	  fill_in "pet_age", with: 10
      fill_in "pet_weight", with: 50
  	  fill_in "pet_date_of_last_visit", with: "2012/02/23"
  	  click_on "Add pet"

  	  expect(page).to have_css 'p', text: 'New Pet' 
  	end
  end