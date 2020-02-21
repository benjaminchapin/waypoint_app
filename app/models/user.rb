class User < ApplicationRecord
  has_many :hikes
  has_many :waypoints

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, length: { in: 10..30 }
  validates :password_digest, presence: true, length: { in: 6..15}
  
end
