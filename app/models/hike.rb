class Hike < ApplicationRecord
  belongs_to :user
  has_many :waypoints

  validates :name, presence:true
  validates :user_id, presence:true
  validates :difficulty_level, presence:true
end
