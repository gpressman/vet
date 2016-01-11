module Features
  
  def sign_in_as_owner
  	User.create(name: "Gabe", email: "owner@vet.com", user_type: "Doctor", is_owner: true, password: "password")
  	sign_in "owner@vet.com", "password"
  end

  def sign_in_as_receptionist
  	User.create(name: "Gabe", email: "receptionist@vet.com", user_type: "Receptionist", is_owner: false, password: "password")
  	sign_in "receptionist@vet.com", "password"
  end

  def sign_in(email, password)
  	visit root_path
  	click_on "Login"
  	fill_in "Email", with: email
  	fill_in "Password", with: password
  	click_on "Login"
  end
end