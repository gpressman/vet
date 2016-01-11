require "rails_helper"
  feature "validates appointment date is filled in" do 
  	scenario "successfully" do 
  
    User.create(name: "Tim", email: "pressman4747@gmail.com", password: "password", id: 1)
    Pet.create(name: "John", user_id: 1, weight: 50)
    sign_in_as_receptionist

    click_on "New appointment"
    select "Tim", from: "appointment_user_id"
    select "John", from: "appointment_pet_id"
    
    fill_in "Reason for visit", with: "appointment"
    click_on "Make appointment"
  
    expect(page).to have_css 'p', text: "New appointment"
 
  	end
  end