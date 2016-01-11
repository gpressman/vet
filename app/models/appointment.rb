class Appointment < ActiveRecord::Base
  validates :date, presence: true
  validates :user, presence: true
  validates :pet, presence: true
  validates :reason_for_visit, presence: true
  belongs_to :user
  belongs_to :pet
end
