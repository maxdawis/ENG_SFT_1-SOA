class AddAdmissionRefToUser < ActiveRecord::Migration
  def change
  	change_table(:users) do |t|
      t.belongs_to :admission
  	end
  end
end
