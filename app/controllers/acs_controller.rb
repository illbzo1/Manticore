class AcsController < ApplicationController

  def new
   @character = Character.find(params[:character_id])
   @ac = @character.create_ac(params[:ac])
  end

  def edit
   @character = Character.find(params[:character_id])
   @ac = @character.ac
  end
 
  def create
    @character = Character.find(params[:character_id])
    @ac = @character.ac(params[:ac])
    redirect_to character_path(@character), :notice => 'Armor Class was successfully created.'
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