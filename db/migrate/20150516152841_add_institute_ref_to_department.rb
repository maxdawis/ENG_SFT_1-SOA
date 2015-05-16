class AddInstituteRefToDepartment < ActiveRecord::Migration
  def change
  	change_table(:departments) do |t|
      t.belongs_to :institute
  	end
  end
end
