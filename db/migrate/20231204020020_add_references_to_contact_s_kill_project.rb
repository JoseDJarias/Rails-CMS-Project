class AddReferencesToContactSKillProject < ActiveRecord::Migration[7.1]
  def change
    add_reference(:skills, :admin, foreign_key: true)
    add_reference(:projects, :admin, foreign_key: true)
    add_reference(:contacts, :admin, foreign_key: true)
  end
end
