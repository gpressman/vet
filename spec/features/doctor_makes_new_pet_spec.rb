require "rails_helper"
  feature "Doctor adds pet to database" do 
  	scenario "Successfully" do
  	  User.create(name: "Tim", email: "abc@gmail.com", password: "password")
  	  sign_in_as_owner
  	  click_on "New pet"
  	  select "Tim", from: "pet_user_id"
  	  fill_in "pet_name", with: "Elliot"
  	  select "Cat", from: "pet_pet_type"
  	  fill_in "pet_breed", with: "American Tabby"
  	  fill_in "pet_age", with: 10
      fill_in "pet_weight", with: 50
  	  fill_in "pet_date_of_last_visit", with: "2012/02/23"
  	  click_on "Add pet"

  	  expect(page).to have_css 'p', text: 'Elliot' 
  	end
  end