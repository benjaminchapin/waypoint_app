class AddStartLatAndStartLongToHikes < ActiveRecord::Migration[6.0]
  def change
    add_column :hikes, :start_lat, :float
    add_column :hikes, :start_long, :float
  end
end
