class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex: [:male, :female, :others]

  has_many :workouts, dependent: :destroy
  has_one_attached :profile_pic
end
