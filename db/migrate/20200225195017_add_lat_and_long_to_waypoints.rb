class AddLatAndLongToWaypoints < ActiveRecord::Migration[6.0]
  def change
    add_column :waypoints, :latitude, :float
    add_column :waypoints, :longitude, :float
  end
end
