class FortitudesController < ApplicationController

  def new
   @character = Character.find(params[:character_id])
   @fortitude = @character.build_fortitude(params[:fortitude])
  end

  def edit
   @character = Character.find(params[:character_id])
   @fortitude = @character.fortitude
  end
 
   def create
     @character = Character.find(params[:character_id])
     @fortitude = @character.create_fortitude(params[:fortitude])
     if @fortitude.save
     redirect_to character_path(@character), :notice => "Fortitude Save successfully created!"
   else
     render :action => "new"
    end
  end

  def update
    @character = Character.find(params[:character_id])
    @fortitude = @character.fortitude
    if @fortitude.update_attributes(params[:fortitude])
      redirect_to character_path(@character), :notice => 'Fortitude Save  were successfully updated.'
    else
      render :action => "edit"
    end
  end

end