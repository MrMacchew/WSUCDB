class AddDescriptionToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :description, :content
  end
end
