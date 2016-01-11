require "rails_helper"

  feature "User is assigned as a doctor" do 
   scenario "Successfully" do 
    sign_in_as_owner
    
    click_on "New Doctor"
    select "Gabe", from: "doctor_user_id"
    fill_in "doctor_street_address", with: "110 School House Lane"
    fill_in "City", with: "Ardmore"
    fill_in "State", with: "PA"
    fill_in "Zip", with: "19003"
    fill_in "doctor_graduated_from", with: "MIT"
    fill_in "doctor_years_in_practice", with: 50
    click_on "Assign as doctor"

    expect(page).to have_css 'p', text: 'Doctor'
  end
end
   	  

   	