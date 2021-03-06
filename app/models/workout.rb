class Workout < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, :intensity, :date, :desc, :workout_type
  validates_numericality_of :intensity, only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10

  enum workout_type: [:running, :cycling, :hiking, :gym]
end
