class User < ApplicationRecord
  has_many :hikes
  has_many :waypoints

  has_secure_password
  validates :password, length: { in: 4..15 }
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
