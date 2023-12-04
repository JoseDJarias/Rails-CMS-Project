class Project < ApplicationRecord
    belongs_to :admins

    # Fields required
    validates_presence_of :project_name
    validates_presence_of :project_description
    validates_presence_of :project_stack
    validates_presence_of :project_task
    validates_presence_of :project_start_date
    validates_presence_of :project_end_date

    




    

end
