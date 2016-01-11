class Doctor < ActiveRecord::Base
  validates :zip, length: {is: 5}
  belongs_to :user
end
