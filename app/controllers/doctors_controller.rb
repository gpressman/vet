class DoctorsController < ApplicationController
  def show
  	@doctor = Doctor.find(params[:id])
  end

  def index
    unless current_user.is_owner == true
      redirect_to user_path(current_user)
    end
  	@doctors = Doctor.all
  end

  def new
    unless current_user.is_owner == true
      redirect_to user_path(current_user)
    end
  	@users = User.all
  	@doctor = Doctor.new
  end

  def create
    @users = User.all 
  	@doctor = Doctor.new(doctor_params)
  	  if @doctor.save
  	  	 @doctor.user.Doctor!
  	     redirect_to doctor_path(@doctor)
      else
        flash[:alert] = "Error"
        render 'new'
  	  end
   end

  def update
  end

  def destroy
  end

  private 
  def doctor_params
  	params.require(:doctor).permit(:street_address, :city, :state, :zip, :graduated_from, :years_in_practice, :user_id)
  end
end
