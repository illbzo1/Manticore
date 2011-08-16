class SpellsController < ApplicationController
  
  def index
    @character = Character.find(params[:character_id])
    @spell = @character.spells.build
  end
  
  def new
    @character = Character.find(params[:character_id])
    @spell = @character.create_spell(params[:spell])
  end
  
  def edit    
   @character = Character.find(params[:character_id])
   @spell = @character.spells.find(params[:id])
  end
  
  def create
    @character = Character.find(params[:character_id])
    @spell = @character.spells.create(params[:spell])
    redirect_to character_spells_path, :notice => "spell successfully created!"
   end
   
   def update
     @character = Character.find(params[:character_id])
     @spell = @character.spells.find(params[:id])
     if @spell.update_attributes(params[:spell])
       redirect_to character_spells_path, :notice => 'spell was successfully updated.'
     else
       render :action => "edit"
     end
   end
   
  def show
    @spell = Character.spell.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end
   
  def destroy
    @character = Character.find(params[:character_id])
    @spell = @character.spells.find(params[:id])
    @spell.destroy
    
    respond_to do |format|
      format.html { redirect_to(character_spells_path, :notice => "spell deleted.") }
      format.xml  { head :ok }
    end
  end

end
