class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = current_user
  	@pets = @user.pets
   #  @appointments = Appointment.where("date > ?", Time.now)
  	# @pet_appointments 
  	# @pets.each do |pet|
  	#   @pet_appointments << @appointments.where(pet_id: pet.id).first
  	end
  	  
  	  
  
end