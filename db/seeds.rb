# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Dr John", user_type: "Doctor", is_owner: true, email: "john@vet.com", password: "password", id: 1)
User.create(name: "Jill", user_type: "Receptionist", email: "jill@vet.com", password: "password")
User.create(name: "Tim", user_type: "Customer", email: "john@vet.com", password: "password", id: 5)
User.create(name: "Adam", user_type: "Customer", email: "adam@vet.com", password: "password")
User.create(name: "Bob", user_type: "Doctor", email: "Bob@vet.com", password: "password", id: 9)
User.create(name: "Susan", user_type: "Doctor", email: "Susan@vet.com", password: "password", id: 10)
Doctor.create(street_address: "10 Main street", city: "Philadelphia", state: "PA", user_id: 10, years_in_practice: 10, graduated_from: "Yale", zip: 19003)
Doctor.create(street_address: "10 Main street", city: "Philadelphia", state: "PA", user_id: 1, years_in_practice: 10, graduated_from: "Yale", zip: 19003)
Doctor.create(street_address: "10 Main street", city: "Philadelphia", state: "PA", user_id: 9, years_in_practice: 10, graduated_from: "Yale", zip: 19003)
Pet.create(name: "Elliot", pet_type: "Cat", user_id: 9)
Pet.create(name: "Kate", pet_type: "Cat", user_id: 9)
Pet.create(name: "Eric", pet_type: "Cat", user_id: 5)
