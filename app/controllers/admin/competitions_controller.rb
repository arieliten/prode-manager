class Admin::CompetitionsController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @competitions = Competition.all
  end


  def show 
    @competition = Competition.find_by_permalink(params[:id])
  end

  def new
    #@competition = Competition.new
    @competition = params[:competition_mode].blank?? Competition.new : params[:competition_mode].titleize.constantize.new
  end

  def create
  	@competition = params[:competition_mode].titleize.constantize.create(params[:competition])
  	respond_to do |format|
      if @competition.save
        flash[:notice] = 'Competition was successfully created!'
        format.html { redirect_to admin_competitions_path }
      else
        format.html { render :action => "new" }
      end
    end
  end


  def edit
    @competition = Competition.find_by_permalink(params[:id])
  end

end
