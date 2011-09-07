class WillsController < ApplicationController

  def new
   @character = Character.find(params[:character_id])
   @will = @character.build_will(params[:will])
  end

  def edit
   @character = Character.find(params[:character_id])
   @will = @character.will
  end
 
   def create
     @character = Character.find(params[:character_id])
     @will = @character.create_will(params[:will])
     if @will.save
     redirect_to character_path(@character), :notice => "Will Save successfully created!"
   else
     render :action => "new"
    end
  end

  def update
    @character = Character.find(params[:character_id])
    @will = @character.will
    if @will.update_attributes(params[:will])
      redirect_to character_path(@character), :notice => 'Will Save  were successfully updated.'
    else
      render :action => "edit"
    end
  end

end