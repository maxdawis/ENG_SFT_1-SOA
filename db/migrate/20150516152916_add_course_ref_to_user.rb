class AddCourseRefToUser < ActiveRecord::Migration
  def change
  	change_table(:users) do |t|
      t.belongs_to :course
  	end
  end
end
