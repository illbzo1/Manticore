class ItemsController < ApplicationController
  
  def index
    @character = Character.find(params[:character_id])
  end
  
  def show
    @item = Character.item.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end
  
  def new
    @character = Character.find(params[:character_id])
    @item = @character.create_item(params[:item])
  end
  
  def edit
   @character = Character.find(params[:character_id])
   @item = @character.item
  end
  
  def create
    @character = Character.find(params[:character_id])
    @item = @character.items.create(params[:item])
    redirect_to character_items_path, :notice => "Item successfully created!"
   end
   
  def destroy
    @character = Character.find(params[:character_id])
    @item = @character.items.find(params[:id])
    @item.destroy
    
    respond_to do |format|
      format.html { redirect_to(character_items_path, :notice => "Item deleted.") }
      format.xml  { head :ok }
    end
  end
  
  def update
    @character = Character.find(params[:character_id])
    @item = @character.item
    if @item.update_attributes(params[:item])
      redirect_to character_items_path, :notice => 'Item was successfully updated.'
    else
      render :action => "edit"
    end
  end

     
     
end
