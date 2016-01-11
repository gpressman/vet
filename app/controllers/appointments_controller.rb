class AppointmentsController < ApplicationController
  
  def show
  	@appointment = Appointment.find(params[:id])
  end

  def index
  	@appointments = Appointment.all
  end

  def new
  	unless current_user.user_type == "Receptionist"
      redirect_to user_path(current_user)
    end
  	@customers = User.where(user_type: "Customer")
  	@pets = Pet.all
  	@appointment = Appointment.new
  end

  def create
  	@appointment = Appointment.new(appointment_params)
      if @appointment.save
      	User.find(@appointment.user_id).appointments << @appointment 
        Pet.find(@appointment.pet_id).appointments << @appointment 
      	redirect_to appointment_path(@appointment)    
      else
      	redirect_to new_appointment_path
      end
  end

  private

  def appointment_params
  	params.require(:appointment).permit(:date, :pet_id, :user_id, :reason_for_visit, :reminder)
  end
end
