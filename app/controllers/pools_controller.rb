class PoolsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @cup = Cup.find_by_permalink('world-cup-sudafrica-2010')
    @stages = @cup.stages
    @pools = current_user.pools.for_competition(@cup)
  end


  def show
#    @pool = Pool.find(params[:id])
  end


  def new
#    @pool = Pool.new
  end

  def create
    @pool = current_user.pools.find_or_initialize_by_match_id(params[:id])
    case params[:type]
    when 'home': 
      @pool.home_goals = params[:value]
    when 'visitor'
      @pool.visitor_goals = params[:value]
    end
    @pool.save
    render :text => params[:value]
#    @pool = Pool.new(params[:pool])
#    if @pool.save
#      flash[:notice] = "Successfully created pool."
#      redirect_to @pool
#    else
#      render :action => 'new'
#    end
  end


  def edit
#    @pool = Pool.find(params[:id])
  end

  def update
#    @pool = current_user.pools.find_or_initialize_by_match_id(params[:id])
#    @pool = Pool.find(params[:id])
#    if @pool.update_attributes(params[:pool])
#      flash[:notice] = "Successfully updated pool."
#      redirect_to @pool
#    else
#      render :action => 'edit'
#    end
  end


  def destroy
#    @pool = Pool.find(params[:id])
#    @pool.destroy
#    flash[:notice] = "Successfully destroyed pool."
#    redirect_to pools_url
  end

end
