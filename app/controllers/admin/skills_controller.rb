class Admin::SkillsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @skills = Skill.all

  end

  def show
    @skill = Skill.find(params[:id])

  end


  def new
    @skill = Skill.new    
    @skill.admin_id = 1
    @skill_soft_type = Skill.where(skill_type: ["soft"])
    @skill_hard_type = Skill.where(skill_type: ["hard"])

    # @skill.admin.build
    # @adm =Admin.all.pluck(:id)
  end  

  # Contact.create(id:id,contact_name:'Kia',contact_email:'e@gmail.com',contact_option:'hire',contact_message:'HOla',admin_id:1)

  def create
    @skill = Skill.new(skill_params)

    if @skill.save
    #  se guardo el animal
      flash[:notice] = 'A new skill has been created!'
      redirect_to @skill
    else

      flash[:error] = 'Error can not create the skill!'
      render :new, status: 422

      
    end
  end

  def edit

    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])

    if @skill.update(skill_params)
      flash[:notice] = 'The skill has been edited!'
      redirect_to @skill
    else
      flash[:error] = 'Error can not create the skill!'
      render :edit, status: 422

    end  

  end

  
    private
    # capturar los parametros
    def skill_params

      params.require(:skill).permit(:skill_type, :skill_description, admins_attributes:[:admin_id])
      
    end

     

end
