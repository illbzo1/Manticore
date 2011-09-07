class AcsController < ApplicationController

  def new
   @character = Character.find(params[:character_id])
   @ac = @character.build_ac(params[:ac])
  end

  def edit
   @character = Character.find(params[:character_id])
   @ac = @character.ac
  end
 
   def create
     @character = Character.find(params[:character_id])
     @ac = @character.create_ac(params[:ac])
     if @ac.save
     redirect_to character_path(@character), :notice => "Armor Class information successfully created!"
   else
     render :action => "new"
    end
  end

  def update
    @character = Character.find(params[:character_id])
    @ac = @character.ac
    if @ac.update_attributes(params[:ac])
      redirect_to character_path(@character), :notice => 'Armor Class was successfully updated.'
    else
      render :action => "edit"
    end
  end

end