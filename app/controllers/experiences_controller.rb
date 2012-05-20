class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def create
    if Experience.create(params[:experience])
      redirect_to experiences_path, :notice => "Experience created"
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
