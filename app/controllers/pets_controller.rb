class PetsController < ApplicationController
  def show
  	@pet = Pet.find(params[:id])
    if @pet.appointments.length > 0
      @appointment = @pet.appointments.first
    end
  end

  def index
  	@pets = Pet.all
  end

  def new
    unless current_user.user_type == "Doctor"
      redirect_to user_path(current_user)
    end
    @customers = User.where(user_type: "Customer")
  	@pet = Pet.new
  end

  def create
    @customers = User.where(user_type: "Customer")
  	@pet = Pet.new(pet_params)
  	@user = User.find(@pet.user_id)
  	@user.pets << @pet
  	  if @pet.save
  	  	redirect_to pet_path(@pet)
  	  else
  	  	render 'new'
  	  end
  end

  private
  def pet_params
  	params.require(:pet).permit(:user_id, :name, :pet_type, :breed, :age, :weight, :date_of_last_visit )
  end
end
