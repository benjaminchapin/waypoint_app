class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.integer :distance
      t.integer :user_id
      t.string :difficulty_level
      t.string :description

      t.timestamps
    end
  end
end
