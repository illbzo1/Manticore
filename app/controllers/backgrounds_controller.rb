class BackgroundsController < ApplicationController
  
  def index
    @character = Character.find(params[:character_id])
    @background = @character.background.build
  end
  
  def new
    @character = Character.find(params[:character_id])
    @background = @character.create_background(params[:background])
  end
  
  def edit    
   @character = Character.find(params[:character_id])
   @background = @character.background.find(params[:id])
  end
  
  def create
    @character = Character.find(params[:character_id])
    @background = @character.background.create(params[:background])
    redirect_to character_background_path, :notice => "background successfully created!"
   end
   
   def update
     @character = Character.find(params[:character_id])
     @background = @character.background.find(params[:id])
     if @background.update_attributes(params[:background])
       redirect_to character_background_path, :notice => 'background was successfully updated.'
     else
       render :action => "edit"
     end
   end
   
  def show
    @background = Character.background.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end
   
  def destroy
    @character = Character.find(params[:character_id])
    @background = @character.background.find(params[:id])
    @background.destroy
    
    respond_to do |format|
      format.html { redirect_to(character_background_path, :notice => "background deleted.") }
      format.xml  { head :ok }
    end
  end

end
