class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :building_id
      t.integer :occupancy

      t.timestamps null: false
    end
  end
end
