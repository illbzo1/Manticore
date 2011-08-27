class BackgroundsController < ApplicationController

  def new
   @character = Character.find(params[:character_id])
   @background = @character.create_background(params[:background])
  end

  def edit
   @character = Character.find(params[:character_id])
   @background = @character.background
  end
 
  def create
    @character = Character.find(params[:character_id])
    @background = @character.create_background(params[:background])
    redirect_to character_path(@character), :notice => 'backgrounds were successfully created.'
  end

  def update
    @character = Character.find(params[:character_id])
    @background = @character.background
    if @background.update_attributes(params[:background])
      redirect_to character_path(@character), :notice => 'backgrounds were successfully updated.'
    else
      render :action => "edit"
    end
  end

end
