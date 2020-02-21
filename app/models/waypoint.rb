class Waypoint < ApplicationRecord
  belongs_to :users
  belongs_to :hikes

  validates :name, presence:true
  validates :user_id, presence:true
  validates :hike_id, presence:true 
end
