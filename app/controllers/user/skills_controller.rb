class User::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    @skill_soft_type = Skill.where(skill_type: ["soft"])
    @skill_hard_type = Skill.where(skill_type: ["hard"])
  end
end
