class SkillsController < ApplicationController
  
  def index
    @character = Character.find(params[:character_id])
    @skill = @character.skills.build
  end
  
  def new
    @character = Character.find(params[:character_id])
    @skill = @character.create_skill(params[:skill])
  end
  
  def edit    
   @character = Character.find(params[:character_id])
   @skill = @character.skills.find(params[:id])
  end
  
  def create
    @character = Character.find(params[:character_id])
    @skill = @character.skills.create(params[:skill])
    redirect_to character_skills_path, :notice => "skill successfully created!"
   end
   
   def update
     @character = Character.find(params[:character_id])
     @skill = @character.skills.find(params[:id])
     if @skill.update_attributes(params[:skill])
       redirect_to character_skills_path, :notice => 'skill was successfully updated.'
     else
       render :action => "edit"
     end
   end
   
  def show
    @skill = Character.skill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end
   
  def destroy
    @character = Character.find(params[:character_id])
    @skill = @character.skills.find(params[:id])
    @skill.destroy
    
    respond_to do |format|
      format.html { redirect_to(character_skills_path, :notice => "skill deleted.") }
      format.xml  { head :ok }
    end
  end

end
