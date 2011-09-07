class ReflexesController < ApplicationController

  def new
   @character = Character.find(params[:character_id])
   @reflex = @character.build_reflex(params[:reflex])
  end

  def edit
   @character = Character.find(params[:character_id])
   @reflex = @character.reflex
  end
 
   def create
     @character = Character.find(params[:character_id])
     @reflex = @character.create_reflex(params[:reflex])
     if @reflex.save
     redirect_to character_path(@character), :notice => "Reflex Save successfully created!"
   else
     render :action => "new"
    end
  end

  def update
    @character = Character.find(params[:character_id])
    @reflex = @character.reflex
    if @reflex.update_attributes(params[:reflex])
      redirect_to character_path(@character), :notice => 'Reflex Save  were successfully updated.'
    else
      render :action => "edit"
    end
  end

end