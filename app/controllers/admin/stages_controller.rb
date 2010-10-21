class Admin::StagesController < ApplicationController
  before_filter :authenticate_admin!
  before_filter :get_competition
  before_filter :get_stage, :only=>[:show,:edit,:update,:destroy]

  def index
    @stages = @competition.stages
  end


  def show
  end


  def new
    @stage = @competition.stages.new
  end

  def create
    @stage = @competition.stages.new(params[:stage])
  	respond_to do |format|
      if @stage.save
        flash[:notice] = 'Stage was successfully created!'
        format.html { redirect_to admin_competition_stages_path(@competition) }
      else
        flash[:error] = 'There was errors creating the stage!'
        format.html { render :action => "new" }
      end
    end
  end


  def edit
  end

  def update
  end


  def destroy
  end


  private

  def get_competition
    @competition = Competition.find_by_permalink(params[:competition_id])
  end

  def get_stage
    @stage = @competition.stages.find_by_permalink(params[:id])
  end
end
