class AddClassroomToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :classroom_id, :integer
  end
end
