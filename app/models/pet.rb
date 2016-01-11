class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :appointments
  enum pet_types: [ :Dog, :Cat, :Bird]
  validates :weight, presence: true
  validates :name, presence: true, length: { maximum: 35 }
  validates :breed, length: { maximum: 35 }
end
