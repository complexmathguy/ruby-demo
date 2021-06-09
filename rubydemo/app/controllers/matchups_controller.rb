class MatchupsController < ApplicationController
  def index
    @matchups = Matchup.all
  end
 
  def show
    @matchup = Matchup.find(params[:id])
  end
 
  def new
    @matchup = Matchup.new
  end
 
  def edit
    @matchup = Matchup.find(params[:id])
  end
 
  def create
    @matchup = Matchup.new(matchup_params)
 
    if @matchup.save
      redirect_to matchups_path
    else
      render 'new'
    end
  end
 
  def update
    @matchup = Matchup.find(params[:id])
 
    if @matchup.update(matchup_params)
      redirect_to matchups_path
    else
      render 'edit'
    end
  end
 
  def destroy
    @matchup = Matchup.find(params[:id])
    @matchup.destroy
    redirect_to matchups_path
  end
 
  private
    def matchup_params
      params.require(:matchup).permit(:name)
    end
end