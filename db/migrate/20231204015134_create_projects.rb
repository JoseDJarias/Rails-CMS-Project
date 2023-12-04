class CreateProjects < ActiveRecord::Migration[7.1]
  def change

    reversible do |dir|

      dir.up do
        create_table :projects do |t|
          t.string :project_name
          t.string :project_description
          t.string :project_stack
          t.string :project_task
          t.string :project_start_date
          t.string :project_end_date

    
          t.timestamps
        end
      end   

      dir.down do
        drop_table :projects
      end  
     
    end  
  end
end
