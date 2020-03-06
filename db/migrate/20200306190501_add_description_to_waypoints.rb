class AddDescriptionToWaypoints < ActiveRecord::Migration[6.0]
  def change
    add_column :waypoints, :description, :string
  end
end
