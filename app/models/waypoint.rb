class Waypoint < ApplicationRecord
  belongs_to :user
  belongs_to :hike

  validates :name, presence: true
  validates :user_id, presence: true
  validates :hike_id, presence: true
  validates :description, presence: true, length: { in: 10..100 }
end
