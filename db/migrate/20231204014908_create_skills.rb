class CreateSkills < ActiveRecord::Migration[7.1]
  def change

    reversible do |dir|

      dir.up do
        create_table :skills do |t|
          t.string :skill_type
          t.string :skill_description
   
          t.timestamps
        end
      end   

      dir.down do
        drop_table :skills
      end  
     
    end  
  end
end
