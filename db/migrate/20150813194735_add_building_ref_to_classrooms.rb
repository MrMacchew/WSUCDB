class AddBuildingRefToClassrooms < ActiveRecord::Migration
  def change
    add_reference :classrooms, :classroom, index: true, foreign_key: true
  end
end
