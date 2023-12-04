# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Skill.create(skill_type:'soft', skill_description:'Respect',admin_id:1)
Project.create(project_name:'REAct projects', project_description:'JJajajaj', project_stack:'RoR', project_task:'MAking api and stiff',project_start_date:2023/11/23, project_end_date:2023/12/23, admin_id:1)