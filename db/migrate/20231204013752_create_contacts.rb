class CreateContacts < ActiveRecord::Migration[7.1]
  def change

    reversible do |dir|

      dir.up do
        create_table :contacts do |t|
          t.string :contact_name
          t.string :contact_email
          t.string :contact_option
          t.string :contact_message
    
          t.timestamps
        end
      end   

      dir.down do
        drop_table :contacts
      end  
     
    end  
  end
end
