class ItemsController < ApplicationController
  
  def index
    @items = Item.all
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
     redirect_to character_path(@character), :notice => "Item successfully created!"
   end
   
  def destroy
    @character = character.find(params[:character_id])
    @item = @character.items.find(params[:id])
    @item.destroy
    redirect_to character_path(@character)
  end
  
  def update
    @character = Character.find(params[:character_id])
    @item = @character.item
    if @item.update_attributes(params[:item])
      redirect_to character_path(@character), :notice => 'item information was successfully updated.'
    else
      render :action => "edit"
    end
  end
     
end
