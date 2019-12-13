class User < ApplicationRecord
  enum sex: [:male, :female, :others]

  has_many :workouts, dependent: :destroy

  validates_presence_of :first_name, :last_name, :dob, :sex
end
