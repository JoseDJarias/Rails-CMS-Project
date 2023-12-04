class Skill < ApplicationRecord
    belongs_to :admin

    # Fields required
    validates_presence_of :skill_type
    validates_presence_of :skill_description

    scope :soft_skills_only, -> {where(skill_type:'soft')}
    scope :hard_skills_only, -> {where(skill_type:'hard')}


end
