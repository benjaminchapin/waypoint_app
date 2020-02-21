class CreateWaypoints < ActiveRecord::Migration[6.0]
  def change
    create_table :waypoints do |t|
      t.integer :user_id
      t.integer :hike_id
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
