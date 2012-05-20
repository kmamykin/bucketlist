class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.order_by('votes.point' => :desc)
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

  def upvote
    @experience = Experience.find(params[:id])
    current_user.vote(@experience, :up)
    redirect_to root_path
  end

  def downvote
    @experience = Experience.find(params[:id])
    current_user.vote(@experience, :down)
    redirect_to root_path
  end
end
