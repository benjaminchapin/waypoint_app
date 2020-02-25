class AddEndLatAndEndLongToHikes < ActiveRecord::Migration[6.0]
  def change
    add_column :hikes, :end_lat, :float
    add_column :hikes, :end_long, :float
  end
end
