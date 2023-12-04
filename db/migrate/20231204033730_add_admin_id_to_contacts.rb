class AddAdminIdToContacts < ActiveRecord::Migration[7.1]
  def change
    add_reference :contacts, :admin, null: false, foreign_key: true
  end
end
