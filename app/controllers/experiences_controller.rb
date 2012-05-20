class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def create
    if Experience.create(params[:experience])
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
end
