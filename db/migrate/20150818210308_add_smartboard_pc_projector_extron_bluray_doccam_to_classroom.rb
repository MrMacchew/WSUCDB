class AddSmartboardPcProjectorExtronBlurayDoccamToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :smartboard, :boolean
    add_column :classrooms, :pc, :boolean
    add_column :classrooms, :projector, :boolean
    add_column :classrooms, :extron, :boolean
    add_column :classrooms, :bluray, :boolean
    add_column :classrooms, :doccam, :boolean
  end
end
