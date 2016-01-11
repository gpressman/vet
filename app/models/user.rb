class User < ActiveRecord::Base
	has_one :doctor
	has_many :appointments
	has_many :pets
	validates :name, presence: true, length: { maximum: 35 }
	enum user_type: [ :Customer, :Doctor, :Receptionist]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
