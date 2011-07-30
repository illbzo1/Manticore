class HpsController < ApplicationController

  def new
   @character = Character.find(params[:character_id])
   @hp = @character.create_hp(params[:hp])
  end

  def edit
   @character = Character.find(params[:character_id])
   @hp = @character.hp
  end
 
  def create
    @character = Character.find(params[:character_id])
    @hp = @character.hp(params[:hp])
    redirect_to character_path(@character), :notice => 'Hit Points were successfully created.'
  end

  def update
    @character = Character.find(params[:character_id])
    @hp = @character.hp
    if @hp.update_attributes(params[:hp])
      redirect_to character_path(@character), :notice => 'Hit Points were successfully updated.'
    else
      render :action => "edit"
    end
  end

end