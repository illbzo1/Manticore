class StatisticsController < ApplicationController

  def new
   @character = Character.find(params[:character_id])
   @statistic = @character.build_statistic(params[:statistic])
  end

  def edit
   @character = Character.find(params[:character_id])
   @statistic = @character.statistic
  end
 
   def create
     @character = Character.find(params[:character_id])
     @statistic = @character.create_statistic(params[:statistic])
     if @statistic.save
     redirect_to character_path(@character), :notice => "Statistics successfully created!"
   else
     render :action => "new"
    end
  end

  def update
    @character = Character.find(params[:character_id])
    @statistic = @character.statistic
    if @statistic.update_attributes(params[:statistic])
      redirect_to character_path(@character), :notice => 'Statistics were successfully updated.'
    else
      render :action => "edit"
    end
  end

end