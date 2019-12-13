class User < ApplicationRecord
  enum sex: [:male, :female, :others]

  has_many :workouts, dependent: :destroy
end
