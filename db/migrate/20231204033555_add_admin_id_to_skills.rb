class AddAdminIdToSkills < ActiveRecord::Migration[7.1]
  def change
    add_reference :skills, :admin, null: false, foreign_key: true
  end
end
