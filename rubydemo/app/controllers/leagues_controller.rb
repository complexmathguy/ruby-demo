class LeaguesController < ApplicationController
  def index
    @leagues = League.all
  end
 
  def show
    @league = League.find(params[:id])
  end
 
  def new
    @league = League.new
  end
 
  def edit
    @league = League.find(params[:id])
  end
 
  def create
    @league = League.new(league_params)
 
    if @league.save
      redirect_to leagues_path
    else
      render 'new'
    end
  end
 
  def update
    @league = League.find(params[:id])
 
    if @league.update(league_params)
      redirect_to leagues_path
    else
      render 'edit'
    end
  end
 
  def destroy
    @league = League.find(params[:id])
    @league.destroy
    redirect_to leagues_path
  end
 
  private
    def league_params
      params.require(:league).permit(:name)
    end
end