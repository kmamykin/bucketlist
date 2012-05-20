class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all.order_by('votes.point'=>:desc)
  end

  def new
    @experience = Experience.new
  end

  def create
    if Experience.create(params[:experience].merge(:user=>current_user))
      redirect_to root_path, :notice => "Experience created"
    else
      render :new
    end
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    if @experience.update_attributes(params[:experience])
      redirect_to root_path, :notice => "Experience updated"
    else
      render :edit
    end
  end

  def destroy

  end

  def vote
    @experience = Experience.find(params[:id])
    @experience.reviews.create(params[:review].merge(:user=>current_user))
    current_user.vote(@experience, params[:vote].to_sym)
    redirect_to root_path
  end
end
