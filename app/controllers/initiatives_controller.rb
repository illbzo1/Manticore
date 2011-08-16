class InitiativesController < ApplicationController
  
  def new
   @character = Character.find(params[:character_id])
   @initiative = @character.create_initiative(params[:initiative])
  end

  def edit
   @character = Character.find(params[:character_id])
   @initiative = @character.initiative
  end
 
  def create
    @character = Character.find(params[:character_id])
    @initiative = @character.initiative(params[:initiative])
    redirect_to character_path(@character), :notice => 'Initiative information was successfully created.'
  end

  def update
    @character = Character.find(params[:character_id])
    @initiative = @character.initiative
    if @initiative.update_attributes(params[:initiative])
      redirect_to character_path(@character), :notice => 'Initiative information was successfully updated.'
    else
      render :action => "edit"
    end
  end

end