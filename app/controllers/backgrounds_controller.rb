class BackgroundsController < ApplicationController
  
  def index
    @character = Character.find(params[:character_id])
    @background = @character.background
  end
  
  def new
   @character = Character.find(params[:character_id])
   @background = @character.build_background(params[:background])
  end

  def edit
   @character = Character.find(params[:id])
   @background = @character.background
  end
 
   def create
     @character = Character.find(params[:character_id])
     @background = @character.create_background(params[:background])
     if @background.save
     redirect_to character_path(@character), :notice => "Background information successfully created!"
   else
     render :action => "new"
    end
  end

  def update
    @character = Character.find(params[:character_id])
    @background = @character.background
    if @background.update_attributes(params[:background])
      redirect_to character_path(@character), :notice => 'Background information was successfully updated.'
    else
      render :action => "edit"
    end
  end
  
  def show
    @character = Character.find(params[:id])
    @background = @character.background

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end
  

end