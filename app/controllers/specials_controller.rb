class SpecialsController < ApplicationController
  
  def index
    @character = Character.find(params[:character_id])
    @special = @character.specials.build
  end
  
  def new
    @character = Character.find(params[:character_id])
    @special = @character.create_special(params[:special])
  end
  
  def edit    
   @character = Character.find(params[:character_id])
   @special = @character.specials.find(params[:id])
  end
  
  def create
    @character = Character.find(params[:character_id])
    @special = @character.specials.create(params[:special])
    redirect_to character_specials_path, :notice => "special successfully created!"
   end
   
   def update
     @character = Character.find(params[:character_id])
     @special = @character.specials.find(params[:id])
     if @special.update_attributes(params[:special])
       redirect_to character_specials_path, :notice => 'special was successfully updated.'
     else
       render :action => "edit"
     end
   end
   
  def show
    @special = Character.special.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end
   
  def destroy
    @character = Character.find(params[:character_id])
    @special = @character.specials.find(params[:id])
    @special.destroy
    
    respond_to do |format|
      format.html { redirect_to(character_specials_path, :notice => "special deleted.") }
      format.xml  { head :ok }
    end
  end

end
